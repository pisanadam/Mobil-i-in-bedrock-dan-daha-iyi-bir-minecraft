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

### Sistemler
- 🎒 **36 gözlü envanter**, eşya taşıma, yığınlama
- 🛠️ **Üretim (craft)**: tahta, çubuk, aletler, kılıçlar, fırın, sandık, meşale, netherite yükseltmeleri… (gelişmiş tarifler çalışma masası ister)
- 🔥 **Fırın**: cevher eritme, yemek pişirme, yakıt sistemi
- 📦 **Sandık**: yere koy, içine eşya depola (kaydedilir)
- 🐷 **Canlılar**: domuz, inek, koyun, tavuk (et/deri/yün düşürür) — gece **zombiler** ve **creeper'lar** çıkar!
- 🍖 Yemek yeme (can yeniler), ender incisiyle ışınlanma
- 💾 Dünya + envanter + sandıklar otomatik kaydedilir

### 💬 Komut sistemi
`/give <eşya> [adet]` · `/summon <canlı> [adet]` · `/gamemode <c|s>` · `/gamerule <kural> <true|false>` · `/time set <day|night|0-24000>` · `/tp <x y z>` · `/seed` · `/kill` · `/heal` · `/clear` · `/help`

## 🚫 Henüz olmayanlar
Büyüler/iksirler, kızıltaş devreleri, vagon/tekne, zırh giyme, Nether/End boyutlarına geçiş, basamak/merdiven/çit gibi kısmi bloklar. (Blokların çoğu dekoratif olarak mevcut, mekanikleri yok.)

## 🛠️ Teknik
Saf JavaScript + WebGL. Dokular çalışma anında prosedürel üretilir. Chunk tabanlı dünya (16×64×16), yüz ayıklamalı mesh, `localStorage` kaydı.
