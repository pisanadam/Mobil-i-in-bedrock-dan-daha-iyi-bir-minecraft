'use strict';

const http = require('http');
const fs = require('fs');
const path = require('path');
const { WebSocketServer, WebSocket } = require('ws');

const PORT = Number(process.env.PORT || 8080);
const ROOT = __dirname;
const INDEX = path.join(ROOT, 'index.html');

const rooms = new Map();

function cleanText(v, max) {
  return Array.from(String(v || '').replace(/[\u0000-\u001f\u007f]/g, '').trim()).slice(0, max).join('');
}
function roomCode() {
  let code;
  do code = String(Math.floor(100000 + Math.random() * 900000));
  while (rooms.has(code));
  return code;
}
function peerId() {
  return 'p' + Math.random().toString(36).slice(2, 10);
}
function send(ws, obj) {
  if (!ws || ws.readyState !== WebSocket.OPEN) return;
  try { ws.send(JSON.stringify(obj)); } catch (_) {}
}
function uniqueName(room, desired) {
  const base = cleanText(desired, 20);
  if (!base) return '';
  const used = new Set(room.names.values());
  if (!used.has(base)) return base;
  for (let i = 1; i < 1000; i++) {
    const suffix = ' (' + i + ')';
    const cut = Math.max(1, 20 - Array.from(suffix).length);
    const name = Array.from(base).slice(0, cut).join('') + suffix;
    if (!used.has(name)) return name;
  }
  return base + ' (' + Date.now().toString().slice(-4) + ')';
}
function roomPlayers(room) {
  return ['Sunucu Sahibi', ...room.names.values()];
}
function notifyCount(room) {
  const msg = { type:'player_count', count:1 + room.clients.size, players:roomPlayers(room) };
  send(room.host, msg);
  for (const ws of room.clients.values()) send(ws, msg);
}
function leaveCurrent(ws, closing) {
  const code = ws.ckRoom;
  if (!code) return;
  const room = rooms.get(code);
  ws.ckRoom = null;

  if (!room) return;
  if (ws.ckRole === 'host') {
    for (const client of room.clients.values()) {
      send(client, { type:'room_closed' });
      client.ckRoom = null;
      client.ckRole = null;
      if (closing !== true) {
        try { client.close(4001, 'room closed'); } catch (_) {}
      }
    }
    rooms.delete(code);
  } else if (ws.ckRole === 'guest') {
    const id = ws.ckPeerId;
    room.clients.delete(id);
    room.names.delete(id);
    send(room.host, { type:'player_left', id });
    notifyCount(room);
  }
  ws.ckRole = null;
  ws.ckPeerId = null;
  ws.ckName = null;
}
function handleHost(ws, msg) {
  if (ws.ckRoom) {
    send(ws, { type:'error', code:'already_in_room' });
    return;
  }
  const title = cleanText(msg.title, 20);
  const description = cleanText(msg.description, 50);
  if (!title) {
    send(ws, { type:'error', code:'title_required' });
    return;
  }
  const code = roomCode();
  const room = {
    code, host:ws, clients:new Map(), names:new Map(),
    title, description, createdAt:Date.now()
  };
  rooms.set(code, room);
  ws.ckRoom = code;
  ws.ckRole = 'host';
  ws.ckPeerId = 'host';
  ws.ckName = 'Sunucu Sahibi';
  send(ws, { type:'hosted', room:code, title, description, name:ws.ckName });
  notifyCount(room);
}
function handleJoin(ws, msg) {
  if (ws.ckRoom) {
    send(ws, { type:'error', code:'already_in_room' });
    return;
  }
  const code = cleanText(msg.room, 6);
  const room = rooms.get(code);
  if (!room) {
    send(ws, { type:'error', code:'room_not_found' });
    return;
  }
  const wanted = cleanText(msg.name, 20);
  if (!wanted) {
    send(ws, { type:'error', code:'name_required' });
    return;
  }
  const id = peerId();
  const name = uniqueName(room, wanted);
  ws.ckRoom = code;
  ws.ckRole = 'guest';
  ws.ckPeerId = id;
  ws.ckName = name;
  room.clients.set(id, ws);
  room.names.set(id, name);
  send(ws, { type:'joined', room:code, id, name, title:room.title, description:room.description });
  send(room.host, { type:'player_joined', id, name });
  notifyCount(room);
}
function handleGame(ws, msg) {
  const room = rooms.get(ws.ckRoom);
  if (!room || !msg.data || typeof msg.data !== 'object') return;

  if (ws.ckRole === 'host') {
    if (msg.to) {
      send(room.clients.get(String(msg.to)), { type:'game', from:'host', data:msg.data });
      return;
    }
    for (const [id, client] of room.clients) {
      if (msg.except && String(msg.except) === id) continue;
      send(client, { type:'game', from:'host', data:msg.data });
    }
  } else if (ws.ckRole === 'guest') {
    send(room.host, { type:'game', from:ws.ckPeerId, data:msg.data });
  }
}

const server = http.createServer((req, res) => {
  const url = new URL(req.url, 'http://localhost');
  if (url.pathname === '/health') {
    const body = JSON.stringify({ ok:true, rooms:rooms.size, uptime:Math.floor(process.uptime()) });
    res.writeHead(200, {'content-type':'application/json; charset=utf-8','cache-control':'no-store'});
    res.end(body);
    return;
  }
  if (url.pathname === '/' || url.pathname === '/index.html') {
    fs.readFile(INDEX, (err, data) => {
      if (err) {
        res.writeHead(500, {'content-type':'text/plain; charset=utf-8'});
        res.end('index.html okunamadı');
        return;
      }
      res.writeHead(200, {
        'content-type':'text/html; charset=utf-8',
        'cache-control':'no-cache',
        'x-content-type-options':'nosniff'
      });
      res.end(data);
    });
    return;
  }
  res.writeHead(404, {'content-type':'text/plain; charset=utf-8'});
  res.end('404');
});

const wss = new WebSocketServer({ noServer:true, maxPayload:256 * 1024 });

server.on('upgrade', (req, socket, head) => {
  const url = new URL(req.url, 'http://localhost');
  if (url.pathname !== '/ws') {
    socket.destroy();
    return;
  }
  wss.handleUpgrade(req, socket, head, ws => wss.emit('connection', ws, req));
});

wss.on('connection', ws => {
  ws.isAlive = true;
  ws.on('pong', () => { ws.isAlive = true; });

  ws.on('message', raw => {
    if (raw.length > 256 * 1024) {
      try { ws.close(1009, 'payload too large'); } catch (_) {}
      return;
    }
    let msg;
    try { msg = JSON.parse(raw.toString()); } catch (_) { return; }
    if (!msg || typeof msg.type !== 'string') return;

    if (msg.type === 'host') handleHost(ws, msg);
    else if (msg.type === 'join') handleJoin(ws, msg);
    else if (msg.type === 'game') handleGame(ws, msg);
    else if (msg.type === 'ping') send(ws, { type:'pong', now:Date.now() });
  });

  ws.on('close', () => leaveCurrent(ws, true));
  ws.on('error', () => {});
});

const heartbeat = setInterval(() => {
  for (const ws of wss.clients) {
    if (ws.isAlive === false) {
      try { ws.terminate(); } catch (_) {}
      continue;
    }
    ws.isAlive = false;
    try { ws.ping(); } catch (_) {}
  }
}, 30000);
heartbeat.unref();

server.listen(PORT, '0.0.0.0', () => {
  console.log('CepKraft server listening on port ' + PORT);
});
