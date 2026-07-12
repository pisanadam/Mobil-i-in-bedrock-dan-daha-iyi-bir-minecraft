# ⛏️ CepKraft — Mobil Blok Dünyası Oyunu

Telefonda tarayıcıdan çalışan, **kurulum gerektirmeyen**, Minecraft tarzı bir voksel oyunu.
Tek bir `index.html` dosyası — kütüphane yok, bağımlılık yok, telifli materyal yok.

> ⚠️ **Dürüst not:** Bu, gerçek Minecraft'ın kopyası **değildir**. Minecraft, Mojang/Microsoft'a ait kapalı
> kaynaklı ve telif haklı bir oyundur. CepKraft, benzer oyun hissini veren **tamamen orijinal** bir oyundur.

## 🎮 Nasıl oynanır?

1. Bu depoda **GitHub Pages**'i aç: depo ayarları → *Pages* → *Deploy from a branch* → `main`.
2. `https://<kullanıcı-adın>.github.io/<depo-adı>/` adresini telefonda aç, mod seç, oyna!
3. Alternatif: `index.html`'i indirip herhangi bir tarayıcıda aç.

### Kontroller

| Eylem | Mobil | Bilgisayar |
|---|---|---|
| Yürüme | Sol tarafta kaydır (joystick) | `W` `A` `S` `D` |
| Bakınma | Sağ tarafta kaydır | Fare |
| Blok koy / yemek ye / canlıya vur | Kısa dokun | Sağ tık (vurmak: sol tık) |
| Blok kırma | Basılı tut | Sol tık (basılı tut) |
| Zıplama / uçuş (yaratıcı) | ⤒ / çift dokun | `Boşluk` / çift bas |
| Envanter & Üretim | 🎒 | `E` |
| Sohbet & Komutlar | 💬 | `T` veya `/` |
| Blok seçme | Envanter çubuğuna dokun | `1`–`9` |

## ✨ Özellikler

### Dünya
- 🌍 Sonsuz, prosedürel dünya: **çöl, ova ve orman biyomları**, göller, kumsallar, karlı dağlar
- 🕳️ **Mağaralar** ve derinliğe göre **8 cevher türü** (kömür, demir, bakır, altın, lapis, kızıltaş, elmas, zümrüt — taş **ve derin kayrak** varyantlarıyla)
- 🌳 8 ağaç türü (meşe, ladin, huş, kiraz…), çiçekler, mantarlar, şeker kamışı, kaktüsler
- 🌅 Gündüz/gece döngüsü, sis, sesler

### ~140 blok
Taş ailesi (granit, diyorit, andezit, derin kayrak, tüf, kalsit, obsidyen…), 11 ağacın kütük/soyulmuş kütük/tahta/yaprak formları (Kızıl ve Çarpık dahil), Nether blokları (netherrack, ruh kumu, magma, bazalt, kara taş, ışık taşı…), End blokları (end taşı, purpur), maden blokları, **16 renkte yün + beton + terakota + cam**, TNT (patlar! 🧨), meşaleler, fenerler ve daha fazlası.

### Oyun modları
- 🏗️ **Yaratıcı**: sınırsız blok, uçuş, anında kırma
- ⚔️ **Hayatta Kalma**: can, düşme hasarı, blok sertliği ve **kazma kademeleri** (tahta → taş → demir → elmas → netherite), kırılan bloklar envantere düşer

### Boyutlar 🌋
- 🔥 **Nether**: dev mağara ağları, lav denizleri, ışık taşı kümeleri, kuvars/altın cevheri, antik enkaz, nylium bölgeleri — **Nether Portalı** ile geç (6 obsidyen, üretimden)
- 🌌 **End**: boşlukta süzülen end taşı adaları, obsidyen sütunlar — **End Portalı** ile geç (6 obsidyen + 2 elmas)
- Portalın üstünde ~1 saniye dur, geçiş olur; varış noktasına dönüş portalı otomatik kurulur. `/dim` komutu da var.

### Ekipman 🛡
- ⚒️ **Dayanıklılık**: aletler ve zırhlar gerçek Minecraft değerleriyle yıpranır (tahta 59, taş 131, demir 250, altın 32, elmas 1561, netherite 2031; zırhlar da kendi değerleriyle) — gözlerde renkli dayanıklılık çubuğu
- 🦺 **Zırh giyme**: deri/zincir/demir/altın/elmas/netherite kask-göğüslük-pantolon-bot; koruma puanı hasarı azaltır (en fazla %80)
- 🤚 **2. el (off-hand)**: envanterden eşya koy — **meşale/fener 2. eldeyken çevreni aydınlatır** (mağarada gerçekten işe yarar!)
- ✨ **Ölümsüzlük Totemi**: 2. eldeyken ölümcül hasardan kurtarır

### Ses & Animasyon 🔊
- Malzemeye göre kırma/koyma sesleri, adım sesleri, menü tık sesleri, portal/patlama/alet kırılma efektleri
- Eldeki eşya görünür ve vururken sallanır, yürürken hafifçe salınır; canlılarda yürüme animasyonu

### Sistemler
- 🎒 **36 gözlü envanter**, eşya taşıma, yığınlama
- 🛠️ **Üretim (craft)**: tahta, çubuk, aletler, kılıçlar, fırın, sandık, meşale, netherite yükseltmeleri… (gelişmiş tarifler çalışma masası ister)
- 🔥 **Fırın**: cevher eritme, yemek pişirme, yakıt sistemi
- 📦 **Sandık**: yere koy, içine eşya depola (kaydedilir)
- 🐷 **12 canlı türü, eklemli 3D modeller ve yürüme animasyonlarıyla**: domuz, inek, koyun, tavuk, kurt, köylü — gece: zombi, **ok atan iskelet**, örümcek, **ışınlanan enderman** (inci düşürür!), zıplayan balçık, creeper
- 🍗 **Açlık sistemi**: yemek açlığı doldurur, tokken can yenilenir, açken zayıflarsın; su altında nefes (🫧) biter, boğulursun
- ✨ **Partikül efektleri**: blok kırılması, patlamalar, mob ölümü, enderman ışınlanması, yemek kırıntıları
- 🎮 **Çok Oyunculu (P2P Co-op)**: menüden oda kur, çıkan kodu arkadaşına gönder; sunucu gerektirmez, dünya/bloklar/sohbet/konum senkronize (aynı Wi-Fi'da en iyi)
- 🧪 Ender incisiyle ışınlanma
- 💾 Dünya + envanter + sandıklar otomatik kaydedilir

### 🌟 Efektler (/effect)
30 efekt: Hız, Yavaşlık, Acele, Güç, Zayıflık, Zıplama Desteği, Yenilenme, Zehir, Soldurma, Direnç, Ateş Direnci, Su Soluma, **Gece Görüşü**, Görünmezlik, Körlük, **Can Artışı**, Emme, Doygunluk, Havalanma, Yavaş Düşme, Bulantı, Açlık, Anında Can/Hasar… `/effect night_vision 60 1`, `/effect clear`

### 💬 Komut sistemi
`/give <eşya> [adet]` · `/summon <canlı> [adet]` · `/effect <efekt> [sn] [seviye]` · `/gamemode <c|s>` · `/dim <overworld|nether|end>` · `/gamerule <kural> <true|false>` · `/time set <day|night|0-24000>` · `/tp <x y z>` · `/seed` · `/kill` · `/heal` · `/clear` · `/help`

## 🚫 Henüz olmayanlar
Büyüler/iksir demleme, kızıltaş devreleri, vagon/tekne, oyuncunun yay kullanması, kısmi bloklar (basamak/çit), Ender Ejderhası. Çok oyunculuda moblar senkronize edilmez (her oyuncu kendi canavarlarını görür).

## 🛠️ Teknik
Saf JavaScript + WebGL. Dokular çalışma anında prosedürel üretilir. Chunk tabanlı dünya (16×64×16), yüz ayıklamalı mesh, `localStorage` kaydı.
