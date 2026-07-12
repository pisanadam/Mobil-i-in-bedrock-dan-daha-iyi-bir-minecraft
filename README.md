# ⛏️ CepKraft — Mobil Blok Dünyası Oyunu

Telefonda tarayıcıdan çalışan, **kurulum gerektirmeyen**, Minecraft tarzı bir voksel oyunu.
Tek bir `index.html` dosyasından oluşur — internet bağlantısı bile gerekmez (sayfa bir kez açıldıktan sonra).

> ⚠️ **Dürüst not:** Bu, gerçek Minecraft'ın kopyası **değildir** ve olamaz. Minecraft, Mojang/Microsoft'a ait
> kapalı kaynaklı ve telif haklı bir oyundur; birebir kopyalamak hem teknik hem hukuki olarak mümkün değildir.
> CepKraft, aynı oyun hissini veren **tamamen orijinal** ve açık kaynak bir oyundur.

## 🎮 Nasıl oynanır?

### Telefonda (önerilen)
1. Bu depoda **GitHub Pages**'i aç: depo ayarları → *Pages* → *Deploy from a branch* → `main` seç.
2. Sana verilen `https://<kullanıcı-adın>.github.io/<depo-adı>/` adresini telefonda aç.
3. **OYNA**'ya bas!

Alternatif: `index.html` dosyasını telefona indirip herhangi bir tarayıcıda açman da yeterli.

### Kontroller

| Eylem | Mobil | Bilgisayar |
|---|---|---|
| Yürüme | Sol tarafta parmağını kaydır (joystick) | `W` `A` `S` `D` |
| Bakınma | Sağ tarafta kaydır | Fare (tıklayınca kilitlenir) |
| Blok koyma | Kısa dokun | Sağ tık |
| Blok kırma | Basılı tut | Sol tık |
| Zıplama | ⤒ butonu | `Boşluk` |
| Uçuş modu | ⤒ butonuna çift dokun | `Boşluk`a çift bas |
| Alçalma (uçarken) | ⤓ butonu | `Sol Shift` |
| Blok seçme | Alttaki envantere dokun | `1`–`9` |

## ✨ Özellikler

- 🌍 **Sonsuz, prosedürel dünya** — tepeler, göller, kumsallar, karlı dağlar
- 🌳 Ağaçlar, 9 farklı yerleştirilebilir blok (çim, taş, kum, kütük, cam, tuğla…)
- 🌊 Yüzme ve yarı saydam su
- 🌅 Gündüz/gece döngüsü ve sis
- 🦘 Otomatik zıplama (mobil Minecraft'taki gibi)
- ✈️ Uçuş modu (yaratıcı mod tarzı)
- 💾 Yaptığın her değişiklik otomatik kaydedilir (aynı tarayıcıda kaldığın yerden devam edersin)
- ⚙️ Görüş mesafesi ayarı, ses açma/kapama, yeni dünya oluşturma

## 🛠️ Teknik

- Saf JavaScript + WebGL — hiçbir kütüphane, hiçbir bağımlılık yok
- Dokular çalışma anında prosedürel üretilir (hiçbir telifli materyal içermez)
- Chunk tabanlı dünya (16×64×16), yüz ayıklamalı mesh üretimi
- `localStorage` ile dünya kaydı
