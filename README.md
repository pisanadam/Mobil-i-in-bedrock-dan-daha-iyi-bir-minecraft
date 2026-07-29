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
| Koşu kilidi (sürekli koşu aç/kapa) | Sol üstte 🏃 tuşu | Sol üstte 🏃 tuşu |
| Ayarlar | ☰ (7 sekmeli Minecraft düzeni) | ☰ |
| Envanter & Üretim | 🎒 | `E` |
| Sohbet & Komutlar | 💬 | `T` veya `/` |
| Blok seçme | Envanter çubuğuna dokun | `1`–`9` |

## ✨ Özellikler

### Dünya
- 📏 **Minecraft'taki yükseklik sınırı: -64 → 319** (384 blok yükseklik). Bedrock -64'te, gökyüzü sınırı 319, deniz seviyesi 62. Derin kayrak & elmas dipte, dağlar 150'ye çıkar. Performans için sadece dolu katmanlar işlenir (`maxY` optimizasyonu) + FPS otomatik ayarı
- 🌊 **Deniz biyomları**: Okyanus, Derin Okyanus, Sıcak Okyanus (kumlu + mercan), Soğuk Okyanus, Donmuş Okyanus (buz yüzeyli); su altında **kelp ormanları, deniz çayırı, mercan blokları**
- 🐟 **10 deniz canlısı**: Morina, Somon, Balon Balığı, Tropik Balık, Mürekkep Balığı, **Parlak Mürekkep** (ışık saçar), **Yunus**, Deniz Kaplumbağası, **Muhafız** (lazer atar), **Boğulmuş** — hepsi suda 3B yüzer, karada çırpınır
- 🏛️ **Yapılar** (Minecraft benzeri, biyoma özel): Çöl Tapınağı (piramit + gizli TNT'li hazine odası), Orman Tapınağı, Cadı Kulübesi, İglo, Yağmacı Karolu, Harabe Portal, Batık Gemi/Okyanus Harabesi, **Okyanus Anıtı** (prizmarin + muhafızlar) — mevcut köy/stronghold/zindan/maden/kule/nether kalesi/bastion'a ek
- 🌍 Sonsuz, prosedürel dünya, **26 biyomla** (21 kara + 5 deniz): Ova, Orman, Huş Ormanı, Koyu Orman, Çiçekli Orman, Kiraz Korusu, Yağmur Ormanı, Savan, Bataklık, Mantar Tarlası, Çöl, Çorak Topraklar (terakota katmanlı platolar), Tayga, Karlı Tayga, Karlı Ova, Buz Dikenleri, Dağlar, Kumsal + **3 özel biyom**: Kristal Vadisi ✨ (parlayan kristaller), Gökkuşağı Tepeleri 🌈 (renkli beton katmanları), Obsidyen Çorak 🌑 (lav gölleri ve magma)
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
- **Malzeme-bazlı sesler**: toprak/kum (kürek), taş, ahşap (balta), **cam kırılması** (gürültü), yaprak, maden/metal, yün — her biri ayrı. Adım, item toplama/atma, yemek, portal, ateş, patlama, alet kırılma sesleri; üst üste binmeyi sınırlayan ses havuzu; **ses seviyesi kaydırıcısı**
- Eldeki blok **3D** görünür ve vururken sallanır; kırarken el titrer; yürürken salınım; canlılarda eklemli yürüyüş

### Işık & Cam 💡
- 🔦 **Gerçek nokta ışığı**: yere/duvara konan **meşale, ışıktaşı, fener, deniz feneri, portal** çevresini gerçekten aydınlatır (7 blok yarıçap, mesh'e gömülü). Elde meşale taşıyınca da yakın çevre parlar. Mağara ve gece artık karanlık
- 🪟 **Saydam cam**: cam ve 16 renkli cam arkasındaki dünyayı gösterir; ayrı yarı-saydam çizim geçişi (doğru derinlik sırası), siyah/pembe/bozuk görünmez

### Sistemler
- 🎒 **36 gözlü envanter**, eşya taşıma, yığınlama; **envanterden dışarı sürükleyip yere atma** (veya `Q`); atılan/kırılan eşyalar **dünyada dönen 3D obje** olur, yaklaşınca otomatik toplanır (envanter doluysa yerde kalır)
- 🛠️ **Üretim (craft)**: aletler, kılıçlar, zırhlar, fırın, sandık, meşale, çakmak taşı+çelik, ateş topu, Kadim Göz, kebap, mercimek çorbası… (gelişmiş tarifler çalışma masası ister)
- 🔥 **Fırın**: cevher eritme, yemek pişirme, yakıt sistemi · 📦 **Sandık**: yere koy/depola; dünya sandıkları ganimet içerir
- 🌾 **Tarım**: **çapa** ile toprağı sür, suya yakınsa nemlenir, **mercimek tohumu** ek → filiz → bitki → hasat; mercimek çorbası & **kebap** (açlık + az can)
- ⚔️ **Kritik vuruş**: düşerken vur → +%50 hasar, altın parçacık + özel ses · 🔥 **Ateş topu** (crosshair yönüne uçar, çarpınca patlar) · 🔥 **Çakmak taşı ve çelik** (yanabilir blokları tutuşturur, kontrollü ateş yayılımı, obsidyen çerçevede Nether portalı açar)
- 🏰 **Yapılar** (chunk-uyumlu, deterministik): yeraltı **stronghold + portal odası**, köyler, zindanlar (kafesli), maden galerileri, kuleler; **Kadim Göz** havaya atılınca portal odasının yönünü gösterir
- 🐷 **12 canlı**: domuz, inek, koyun, tavuk, kurt, köylü, zombi, **ok atan iskelet**, örümcek, **ışınlanan enderman**, zıplayan balçık, creeper (hepsi eklemli 3D + yapay zeka)
- 🍗 **Açlık sistemi**, su altında nefes/boğulma · 🔥 **Yanma**: ekranın **sadece alt kısmında** alev animasyonu (görüşü kapatmaz), suya girince söner
- ✨ **Partiküller**: blok kırma (blok renginde), patlama, mob ölümü, enderman/portal, yeme, kritik vuruş
- 🎮 **Çok Oyunculu Co-op (6 haneli oda kodu)**: "Oda Kur" → 6 haneli kod → arkadaş kodu girip **aynı dünyaya katılır**; hareket, blok kır/koy, item düşür/al, sohbet ve **skin** senkronize; oyuncu çıkıp girse de oda bozulmaz; aracı sunucu engellenirse manuel kod yedeği
- 🧍 **Skin yükleme**: kendi PNG skinini yükle (Java 64×64 / eski 64×32 uyumlu), doğru bölgelere maplenir, **ince/kalın kol** seçeneği; hatalıysa özgün varsayılan skin
- 🎨 **Doku paketi**: kendi PNG'lerini veya **ZIP**'ini yükle (stone.png, oak_planks.png…); eksik doku varsa varsayılan kalır, çökmez, oyun içinden sıfırlanır
- 💾 Dünya + envanter + sandıklar + ayarlar otomatik kaydedilir

### 🌟 Efektler (/effect)
30 efekt: Hız, Yavaşlık, Acele, Güç, Zayıflık, Zıplama Desteği, Yenilenme, Zehir, Soldurma, Direnç, Ateş Direnci, Su Soluma, **Gece Görüşü**, Görünmezlik, Körlük, **Can Artışı**, Emme, Doygunluk, Havalanma, Yavaş Düşme, Bulantı, Açlık, Anında Can/Hasar… `/effect night_vision 60 1`, `/effect clear`

### ⚙️ Ayarlar — Minecraft düzeninde
☰ tuşu **Minecraft'ın ayar ekranıyla aynı yapıda**, 7 sekmeli tam ekran bir panel açar (arayüz modernleştirildi). Her seçenek gerçekten bir şeyi değiştirir:

- **🎬 Grafik**: Grafikler (Hızlı/Güzel/Muhteşem), Görüş Mesafesi (2–24 chunk + Otomatik), **Simülasyon Mesafesi**, **Azami Kare Hızı**, **Parlaklık**, **Arayüz Ölçeği**, **Yumuşak Işıklandırma**, Bulutlar, **Partiküller** (Tümü/Azaltılmış/En Az), **Varlık Gölgeleri**, **Varlık Görüş Mesafesi**, Görüş Alanı (FOV), Görüş Sallanması, Tam Ekran, Otomatik Optimizasyon
- **🔊 Ses**: Ana Ses, Müzik, Bloklar, Düşman Canlılar, Dost Canlılar, Ortam, Altyazılar — Minecraft'taki ses kanallarının aynısı
- **🎮 Kontroller**: **Fare Hassasiyeti**, **Dokunmatik Hassasiyeti**, **Dikey Ekseni Ters Çevir**, **Otomatik Zıplama**, Koşu Kilidi, Tuşları Taşı
- **💬 Sohbet**: Sohbet aç/kapa, **Yazı Boyutu**, **Arka Plan Saydamlığı**
- **♿ Erişilebilirlik**: Hasar Eğimi, Bozulma Efektleri, **Yüksek Kontrast**, Altyazılar
- **🎲 Oyun**: **Zorluk** (Barışçıl/Kolay/Normal/Zor — hasarı 0/×0.5/×1/×1.5 ölçekler, Barışçıl'da düşman doğmaz), **Koordinatları Göster**, Çok Oyunculu, Yeni Dünya
- **🎨 Kaynaklar**: Skin yükle + kol tipi, Minecraft doku paketi (.zip) yükle & sıfırla

### 💬 Komut sistemi
`/give <eşya> [adet]` · `/summon <canlı> [adet]` · `/effect <efekt> [sn] [seviye]` · `/tick rate <n>` / `/tick freeze|unfreeze` · `/gamemode <c|s>` · `/dim <overworld|nether|end>` · `/gamerule <kural> <true|false>` · `/time set <day|night|0-24000>` · `/tp <x y z>` · `/seed` · `/kill` · `/heal` · `/clear` · `/help`

### 🧪 İksir & Demleme
- **Demleme standı** (paneli) → Su şişesi + Nether siğili = Tuhaf İksir, üzerine malzeme = iksir. **12 iksir**: Şifa, Yenilenme, Hız, Zıplama, Güç, Ateş Direnci, Gece Görüşü, Su Soluma, Zehir, Zayıflık, Yavaşlık, Görünmezlik
- İçince efekt uygular + cam şişe iade; **sıçrayan iksir** (barut ekle) crosshair yönüne atılır, çarpınca alan etkisi

### 🔴 Kızıltaş (Redstone)
- **Şalter, kızıltaş teli, kızıltaş meşalesi, kızıltaş lambası, elektrikli ray** — gerçek güç yayılımı (15 blok BFS). Şalter aç → tel yanar → lamba yanar; elektrikli ray vagonu hızlandırır

### 🛒 Ulaşım
- **Vagon** (rayda hızlanır) ve **tekne** (suda yüzer) — yerleştir, dokunarak bin, joystickle sür, zıpla ile in. Ray ve elektrikli ray blokları

### 🐉 Ender Ejderhası
- End boyutuna girince **boss savaşı**: ada merkezinde uçan, dalış saldırıları yapan kanatlı ejderha, üstte **boss sağlık çubuğu**, ölünce patlama + Ejderha Yumurtası ganimeti. `/summon ender_dragon` ile de çağrılır

### 🔥 Nether içeriği
- 🏰 **Nether Kalesi**: nether tuğlasından köprü/koridorlar, kesişimde **blaze kafesi** (blaze + wither iskeleti doğurur), siğil bahçesi ve ganimet sandığı
- 🖤 **Bastion Kalıntısı**: kara taştan dev yapı, köşe kuleleri, **altın ganimet blokları** ve **piglinler** (piglin + piglin zorbası)
- 🔥 **Blaze**: havada süzülür, ateş topu atar, alev çubuğu düşürür (→ alev tozu → demleme)
- 💀 **Wither İskeleti**: uzun kara iskelet, vurunca **Soldurma** efekti bulaştırır, kafatası düşürür
- 🐷 **Piglin** (nötr, altın düşürür) ve **Piglin Zorbası** (saldırgan)
- Bu canlılar hem yapılarda hem Nether'de rastgele doğar; `/summon blaze|wither_skeleton|piglin` ile de çağrılır

### 🎮 Çok oyunculu — mob senkronu
- Artık **canlılar da senkronize**: ev sahibi otoriter (mob yapay zekasını çalıştırır ve durumlarını yayınlar), misafirler aynı mobları görür; misafir bir mob'a vurunca ev sahibine iletilir. Araçlar da senkron
- **Oda kodu dayanıklılığı**: birden çok ücretsiz sinyal aynası (biri engellenirse diğeri), teklif yeniden yayını; ağ tamamen engelliyse manuel kod yedeği

### 🧱 1.8.9 klasikleri
1.8.9'un simge içerikleri eklendi (mevcut 1.21 içeriğinin üstüne):
- **Bloklar**: cilalı granit/diyorit/andezit, kırmızı kumtaşı, sıkışmış buz, balçık bloku, ıslak sünger, yontma kuvars & kuvars sütun, mantar blokları & sapı, böcekli taş, bariyer, komut bloku, nota bloku, müzik kutusu, büyü masası, örs, işaret feneri, kazan, ender sandığı, tuzaklı sandık, huni, fırlatıcı, bırakıcı, piston & yapışkan piston, gün ışığı sensörü
- **Bitkiler**: örümcek ağı, sarmaşık, merdiven, nilüfer, uzun ot, büyük eğreltiotu, ayçiçeği, leylak, gül çalısı, şakayık
- **Gerçek ekinler**: buğday, havuç, patates (tohum → dikim → olgunlaşma → hasat); mercimek de aynı sisteme taşındı
- **Canlılar (18)**: tavşan, mantar inek, yaban kedisi, yarasa, at, eşek, katır, zombi köylü, mağara örümceği, gümüş böceği, ender böceği, magma küpü, cadı, ghast, demir golem, kar golemi, yaşlı muhafız, **Wither**
- **Eşyalar (36)**: yay, kova/su/lav/süt kovası, makas, olta, kar topu, yumurta, kemik tozu, kase, mantar çorbası, tavşan güveci, kâğıt, kitap, pusula, saat, harita, eyer, tasma, isim etiketi, kil topu, tuğla, tecrübe şişesi ve daha fazlası — tarifleriyle birlikte

### 📐 Şekil & çarpışma sistemi
Küp olmayan bloklar için tam bir **kutu (AABB) sistemi** eklendi: her blok `[x0,y0,z0,x1,y1,z1]` kutularıyla tanımlanır, mesh üreticisi ve çarpışma aynı kutuları kullanır.
- 🧱 **Yarım bloklar**: 15 malzeme (6 ağaç + taş, parke, taş tuğlası, kumtaşı, kırmızı kumtaşı, tuğla, nether tuğlası, kuvars, purpur) — üst/alt yarı, tıkladığın yüze göre otomatik
- 🪜 **Merdivenler**: aynı 15 malzeme, **4 yöne** bakış açısına göre + üst/alt yarı (malzeme başına 8 varyant)
- 🚶 **Otomatik basamak çıkma**: yarım blok, merdiven ve kar katmanına **zıplamadan** çıkılır (0.6 blok, Minecraft ile aynı)
- 🚧 **Çit & çit kapısı**: komşu çit/bloklara **kendiliğinden bağlanır**; kapı tıklayınca açılıp kapanır
- 🪟 **Cam panel (16 renk dahil) & demir korkuluk**: komşuya göre bağlanan ince paneller
- 🚪 **Kapılar** (6 ağaç + demir): iki blok yüksek, iki eksen, açık/kapalı — tıklayınca **iki yarısı birlikte** döner
- 🪟 **Kapaklar (trapdoor)**: alt/üst yerleşim + açık/kapalı
- 🛏️ **Yatak** (ayak + baş), 🧶 **16 renk karo halı** (1/16 yükseklik), ❄️ **kar katmanı** (8 kademe)
- ⚙️ **Piston itme mekaniği**: kızıltaşla güç verilince **12 bloğa kadar** zinciri iter; bedrock gibi kırılmaz bloklar iteklenmez



### 🎨 Doku paketi (Minecraft resource pack uyumlu)
Ayarlar → *Doku paketi*'nden **kendi** Minecraft doku paketini (`.zip`) doğrudan yükleyebilirsin.

- 📦 **Standart klasör yapısı okunur**: `assets/minecraft/textures/block/…` ve `…/item/…` (1.13 öncesi `blocks/` + `items/` çoğul adları da desteklenir). `gui/`, `entity/`, `painting/` gibi klasörler yoksayılır
- 🕰️ **Sürüm gözetmez**: 1.13'te tüm doku dosyaları yeniden adlandırıldı. Hem **modern (1.13 → 26.2)** hem de **1.8.9 dönemi** adlar tanınır — `grass_top`/`grass_block_top`, `log_oak`/`oak_log`, `planks_oak`/`oak_planks`, `wool_colored_silver`/`light_gray_wool`, `porkchop_raw`/`porkchop`, `wood_sword`/`wooden_sword`, `dye_powder_blue`/`lapis_lazuli` … hangisi varsa o kullanılır
- 🏷️ **Blok ve eşya kimlikleri Minecraft ile birebir aynı** (`grass_block`, `oak_log`, `crimson_stem`, `nether_wart_block`, `diamond_pickaxe`, `ender_eye` …) — paketteki dosya adları doğrudan tutar
- 🧩 **Yüz eşlemesi doğru yapılır**: Minecraft'ta dosya adı çoğu zaman blok adından farklıdır. `grass_block` → üst `grass_block_top`, yan `grass_block_side`, alt `dirt`; `oak_log` → yan `oak_log`, üst `oak_log_top`; `furnace` → `furnace_front`/`furnace_side`/`furnace_top`; ayrıca `snow`→kar bloğu, `magma`→magma bloğu, `redstone_dust_line0`→kızıltaş teli gibi ad farkları çözülür
- 🎞️ **Animasyonlu dokular**: `water_still`, `lava_still`, `fire_0`, `nether_portal` gibi dikey şeritlerden **ilk kare** otomatik alınır (şerit ezilmez)
- 🔍 **HD paket desteği**: 32x / 64x / 128x paketlerde atlas otomatik olarak o çözünürlüğe çıkar — doku kalitesi düşmez. Pakette olmayan bloklar prosedürel görünümünü korur
- ♻️ *Sıfırla* ile her şey varsayılan prosedürel dokulara döner
- 🖼️ Tek tek `.png` de yükleyebilirsin (dosya adı blok/eşya kimliği olmalı, örn. `stone.png`)

> Oyun hiçbir Minecraft dosyası ile gelmez; yüklediğin paket yalnızca senin cihazında kullanılır.

## 🚫 Henüz olmayanlar
Zırh süsleme şablonları, deneyim/büyü masası, gelişmiş köylü ticareti, tam gökkubbe (güneş/ay sprite'ı), sesli sohbet. Temel mekaniklerin çoğu artık mevcut.

> ⚖️ **Telif:** Oyun hiçbir Minecraft dokusu, sesi, logosu, ismi veya telifli dosyası içermez — tüm görseller çalışma anında prosedürel üretilir. İstersen **kendi** skin ve doku paketini yükleyebilirsin.

## 🛠️ Teknik
Saf JavaScript + WebGL. Dokular çalışma anında prosedürel üretilir. Chunk tabanlı dünya (16×64×16), yüz ayıklamalı mesh, `localStorage` kaydı.
