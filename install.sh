#!/usr/bin/env bash
set -Eeuo pipefail

REPO="pisanadam/Mobil-i-in-bedrock-dan-daha-iyi-bir-minecraft"
APP_DIR="/opt/cepkraft"
APP_USER="cepkraft"
APP_PORT="8080"

if [[ "${EUID}" -ne 0 ]]; then
  echo "Bu kurucu root olarak çalışmalı. Server.pro konsolunda root kullanıcıyla çalıştır."
  exit 1
fi

echo
echo "=========================================="
echo " CepKraft • Server.pro + deDYN Kurulumu"
echo "=========================================="
echo

DEDYN_ZONE="pisankus.dedyn.io"
SUBNAME="cakmamc"
FQDN="cakmamc.pisankus.dedyn.io"

echo "Hedef adres: ${FQDN}"
echo
echo "[1/8] Sistem paketleri hazırlanıyor..."
export DEBIAN_FRONTEND=noninteractive
rm -f /etc/apt/sources.list.d/caddy-stable.list /usr/share/keyrings/caddy-stable-archive-keyring.gpg 2>/dev/null || true
systemctl disable --now caddy.service 2>/dev/null || true
apt-get update -y
apt-get install -y ca-certificates curl gnupg git tar dnsutils debian-keyring debian-archive-keyring apt-transport-https

NODE_OK=0
if command -v node >/dev/null 2>&1; then
  NODE_MAJOR="$(node -p "Number(process.versions.node.split('.')[0])" 2>/dev/null || echo 0)"
  if [[ "${NODE_MAJOR}" -ge 18 ]]; then NODE_OK=1; fi
fi
if [[ "${NODE_OK}" -ne 1 ]]; then
  echo "[2/8] Node.js 22 kuruluyor..."
  curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
  apt-get install -y nodejs
else
  echo "[2/8] Node.js uygun: $(node -v)"
fi

echo "[3/8] Nginx + Certbot kuruluyor..."
apt-get update -y
apt-get install -y nginx certbot python3-certbot-nginx
systemctl enable --now nginx

echo "[4/8] GitHub reposu indiriliyor..."
TMP="$(mktemp -d)"
trap 'rm -rf "${TMP}"' EXIT
HTTP_CODE="$(curl -sS -L -o "${TMP}/repo.tgz" -w '%{http_code}' "https://codeload.github.com/${REPO}/tar.gz/HEAD")"
if [[ "${HTTP_CODE}" != "200" ]]; then
  echo "GitHub repo indirilemedi (HTTP ${HTTP_CODE})."
  exit 1
fi

systemctl stop cepkraft.service 2>/dev/null || true
rm -rf "${APP_DIR}.new"
mkdir -p "${APP_DIR}.new"
tar -xzf "${TMP}/repo.tgz" -C "${APP_DIR}.new" --strip-components=1
if [[ ! -f "${APP_DIR}.new/server.js" || ! -f "${APP_DIR}.new/package.json" || ! -f "${APP_DIR}.new/index.html" ]]; then
  echo "Repo içinde gerekli CepKraft dosyaları bulunamadı."
  exit 1
fi
rm -rf "${APP_DIR}"
mv "${APP_DIR}.new" "${APP_DIR}"
cd "${APP_DIR}"
npm install --omit=dev --no-audit --no-fund

if ! id "${APP_USER}" >/dev/null 2>&1; then
  useradd --system --home "${APP_DIR}" --shell /usr/sbin/nologin "${APP_USER}"
fi
chown -R "${APP_USER}:${APP_USER}" "${APP_DIR}"

echo "[5/8] CepKraft systemd servisi oluşturuluyor..."
cat >/etc/systemd/system/cepkraft.service <<EOF
[Unit]
Description=CepKraft Multiplayer Server
After=network-online.target
Wants=network-online.target

[Service]
Type=simple
User=${APP_USER}
Group=${APP_USER}
WorkingDirectory=${APP_DIR}
Environment=NODE_ENV=production
Environment=PORT=${APP_PORT}
ExecStart=/usr/bin/node ${APP_DIR}/server.js
Restart=always
RestartSec=3
NoNewPrivileges=true
PrivateTmp=true

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable --now cepkraft.service
sleep 1
if ! systemctl is-active --quiet cepkraft.service; then
  echo "CepKraft servisi başlayamadı:"
  journalctl -u cepkraft.service -n 50 --no-pager
  exit 1
fi

echo "[6/8] Server.pro public IPv4 bulunuyor..."
PUBLIC_IP="$(curl -4 -fsS --max-time 10 https://api.ipify.org || true)"
if [[ ! "${PUBLIC_IP}" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
  echo "Public IPv4 otomatik bulunamadı."
  read -rp "Server.pro public IPv4 adresini yaz: " PUBLIC_IP </dev/tty
fi

echo "[7/8] DNS kaydı daha önce elle oluşturuldu: ${FQDN}"
echo "[8/8] HTTPS/WSS reverse proxy ayarlanıyor..."

cat >/etc/nginx/sites-available/cepkraft <<EOF
server {
    listen 80;
    listen [::]:80;
    server_name ${FQDN};

    client_max_body_size 2m;

    location /ws {
        proxy_pass http://127.0.0.1:${APP_PORT};
        proxy_http_version 1.1;
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection "upgrade";
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_read_timeout 3600;
        proxy_send_timeout 3600;
    }

    location / {
        proxy_pass http://127.0.0.1:${APP_PORT};
        proxy_http_version 1.1;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOF

ln -sfn /etc/nginx/sites-available/cepkraft /etc/nginx/sites-enabled/cepkraft
rm -f /etc/nginx/sites-enabled/default
nginx -t
systemctl restart nginx

if command -v ufw >/dev/null 2>&1 && ufw status 2>/dev/null | grep -q '^Status: active'; then
  ufw allow 80/tcp >/dev/null || true
  ufw allow 443/tcp >/dev/null || true
fi

echo "DNS kontrol ediliyor: ${FQDN} -> ${PUBLIC_IP}"
for _ in $(seq 1 60); do
  GOT="$(dig +short A "${FQDN}" @1.1.1.1 | tail -n1 || true)"
  if [[ "${GOT}" == "${PUBLIC_IP}" ]]; then break; fi
  sleep 2
done

GOT="$(dig +short A "${FQDN}" @1.1.1.1 | tail -n1 || true)"
if [[ "${GOT}" != "${PUBLIC_IP}" ]]; then
  echo "UYARI: DNS henüz ${PUBLIC_IP} adresine çözülmüyor (şu an: ${GOT:-yok})."
  echo "HTTP çalışır; HTTPS sertifikası DNS oturunca tekrar denenebilir."
else
  certbot --nginx -d "${FQDN}" --non-interactive --agree-tos --register-unsafely-without-email --redirect || true
fi

if [[ -f "/etc/letsencrypt/live/${FQDN}/fullchain.pem" ]]; then
  GAME_URL="https://${FQDN}"
  WS_URL="wss://${FQDN}/ws"
else
  GAME_URL="http://${FQDN}"
  WS_URL="ws://${FQDN}/ws"
fi

echo "=========================================="
echo " ✅ CepKraft kurulumu tamamlandı"
echo "=========================================="
echo " Oyun adresi : ${GAME_URL}"
echo " WebSocket   : ${WS_URL}"
echo " Yerel port  : ${APP_PORT}"
echo " Public IP   : ${PUBLIC_IP}"
echo
echo " Kontrol:"
echo "   systemctl status cepkraft --no-pager"
echo "   systemctl status nginx --no-pager"
echo "   curl -fsS ${GAME_URL}/health"
