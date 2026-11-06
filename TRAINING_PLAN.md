# TRAINING_PLAN — R Programlama ve Veri Manipülasyonuna Giriş

> **Durum:** Eğitim tasarımı için onaylanmış temel yol haritası (v1.0, 6 Kasım 2026).  
> **Kullanım:** Farklı kurumlara ve tarihlere uyarlanabilir. Aralık 2026 uygulaması ilk oturumdur.  
> **İlişkili proje:** [R Programlama Kitabı](https://mfatihtuzen.github.io/r-programlama/) — kaynak ve içerik temeli; eğitim deposu bağımsızdır.

## 1. Amaç ve tasarım ilkeleri

Başlangıç düzeyindeki katılımcıya R ile çalışmayı, temel programlama mantığını ve veri dosyalarını okuyup `dplyr` ile işleyerek tekrar üretilebilir çıktılar üretmeyi öğretmek. Hedef, fonksiyon isimlerini ezberletmek değil, veri üzerinde kontrollü bir iş akışı kurdurmaktır.

- **Hedef kitle:** Uzman yardımcıları ve veriyle çalışan kamu/diğer kurum personeli; önceden R bilgisi zorunlu değildir.
- **Düzey:** Başlangıç; ileri istatistik, modelleme, kapsamlı görselleştirme ve yazılım mühendisliği kapsam dışıdır.
- **Pedagoji:** Neden → ne zaman → nasıl → kontrol et; küçük yapay örnek → WDI gerçek veri → bağımsız görev.
- **Modülerlik:** Her gün bağımsız kapanır; dersler arasında sarkma olabilir, **günler arasında zorunlu konu devri yapılmaz**.
- **Modern R:** Projeler, göreli yollar, yerleşik `|>`, okunabilir kod, paket dokümantasyonu, güvenilir veri aktarımı, yeniden üretilebilirlik ve AI çıktısını doğrulama derslerin içine dağılır.
- **Kaynak bütünlüğü:** Kitabın kodları ve ortak WDI veri setleri yeniden kullanılır; orijinal kaynak, üretim tarihi ve veri sözlüğü belirtilir. Eğitim deposu kitap deposundan ayrı tutulur.

## 2. Süre ve uygulama

- **Toplam:** 5 gün, her gün 09.30–12.30; takvimde 15 saatlik zaman bloğu.
- **Günlük ritim:** 09.30–10.15 ders; 10.15–10.30 ara; 10.30–11.15 ders; 11.15–11.30 ara; 11.30–12.15 ders; 12.15–12.30 esnek kapanış/soru/sorun çözümü.
- **Net süre açıklaması:** 15 × 45 = **675 dakika (11 saat 15 dakika) net çekirdek ders**; beş gün toplam **75 dakika esnek süre** ve **150 dakika ara**. Resmî tanımda “15 ders saati” ifadesi kurumun uygulamasıyla teyit edilmelidir; “15 saat net ders” denmemelidir.
- **Oturum içi hedef:** 25–30 dk anlatım+kodlama, 10–15 dk uygulama, kalan süre hızlı kontrol; günün esnek 15 dakikası tampon olarak kullanılır.
- **Süre yönetimi:** Her oturumda A = zorunlu çekirdek, B = zaman kalırsa pekiştirme, C = webden kendi kendine çalışma. Zaman daralınca önce B çıkarılır; A başka güne aktarılmaz. Öğrenme hedefleri oturum ve gün düzeyinde kontrol edilir.

## 3. Öğrenme çıktıları

Eğitim sonunda katılımcı:

1. RStudio projesi ve açıklamalı `.R` scripti oluşturur; yardım ve paket belgelerinden yararlanır.
2. Temel veri tipleri, vektörler, data frame/tibble ve `NA` ile işlem yapar.
3. `if / else`, `for`, `while` mantığını anlar; basit `function()` tanımlar; vektörel alternatifin ne zaman uygun olduğunu ayırt eder.
4. CSV, Excel ve RDS dosyalarını okuyup dışarı aktarır; SAS/SPSS dosyalarını `haven` ile okur; etiketli değişkenlerin önemini fark eder.
5. Veri tabanından R'ye veri almanın `DBI`/sürücü/bağlantı/kimlik doğrulama mantığını tanır; canlı bağlantı zorunlu değildir.
6. `dplyr` ile seçme, filtreleme, sıralama, yeni değişken, gruplu özetleme ve birleştirme yapar.
7. `tidyr` ile temel uzun/geniş biçim dönüşümü gerçekleştirir.
8. Veriyi kontrol edip sonucu dosyaya kaydeden mini projeyi tamamlar; AI ile yazılmış kodun doğruluğundan kendisinin sorumlu olduğunu açıklar.

## 4. Nihai oturum planı (A çekirdek içerik)

| Gün | Saat | Oturum | Zorunlu öğrenme hedefi |
|---|---|---|---|
| 1 | 09.30–10.15 | R ekosistemi; R/RStudio farkı; Project, Console, Script; komut çalıştırma; yardım ve paket mantığı | Kendi RStudio projesini ve ilk scriptini oluşturur. |
| 1 | 10.30–11.15 | Nesneler ve atama; operatörler; temel veri tipleri; vektörler; eksik değer (NA); yerleşik fonksiyonlar | Vektör oluşturur, temel işlemleri ve fonksiyon çağrılarını yapar. |
| 1 | 11.30–12.15 | data.frame/tibble, liste ve matrisin rolü; veri görüntüleme; indeksleme; if / else ve koşulların ilk uygulaması | Veriyi inceleyip koşula bağlı bir işlem yazabilir. |
| 2 | 09.30–10.15 | if / else pekiştirme; for ve while döngülerinin mantığı; döngü yerine vektörel işlem; function() ile basit fonksiyon oluşturma | Basit bir koşul, döngü ve kullanıcı tanımlı fonksiyon kurar. |
| 2 | 10.30–11.15 | Veri dosyası mantığı; göreli yol; CSV ve Excel okuma; tip/ayraç/kodlama/NA kontrolü; RDS okuma-kaydetme | CSV/Excel/RDS verisini doğru okuyup kontrol eder. |
| 2 | 11.30–12.15 | SAS (.sas7bdat), SPSS (.sav) tanıtımı ve okuma; etiketli değişken; CSV/Excel çıktısı; veri tabanlarına DBI/odbc üzerinden kavramsal giriş | SAS/SPSS verisini okuma örneğini uygular; dışa aktarma yöntemlerini tanır. |
| 3 | 09.30–10.15 | Tidy veri mantığı; tibble; |> kullanımı; select(), rename(), filter() ve koşullu filtreleme | İlgili satır ve sütunları seçebilir. |
| 3 | 10.30–11.15 | arrange(), mutate(), if_else(), case_when(); yeni gösterge üretme; veri tipleri ve NA | Yeni değişkenler ve koşullu sınıflar oluşturabilir. |
| 3 | 11.30–12.15 | distinct(), is.na(), coalesce() tanıtımı; çok adımlı işlem zinciri; WDI uygulama/egzersiz | WDI verisini filtreleyip temiz bir analiz tablosu hazırlayabilir. |
| 4 | 09.30–10.15 | group_by(), summarise(), count(), n(); gruplu hesaplama ve gruplamanın sonlandırılması | Gruplu özet istatistikler oluşturabilir. |
| 4 | 10.30–11.15 | Tablo ilişkileri ve anahtarlar; left_join(), inner_join(), anti_join(); eşleşmeyen ve mükerrer kayıt kontrolü | İki tabloyu uygun anahtarla güvenli şekilde birleştirebilir. |
| 4 | 11.30–12.15 | pivot_longer() ve pivot_wider(); uzun/geniş veri; WDI ile birleşik uygulama | Uzun/geniş dönüşüm ve temel birleştirme-özetleme akışını tamamlar. |
| 5 | 09.30–10.15 | Script düzeni; proje yapısı; okunabilir kod; yardım, hata ayıklama; sonuç kontrolü; Quarto/GitHub ve yapay zekâ ile kod doğrulama tanıtımı | Kendi çözümünü anlaşılır, taşınabilir ve kontrol edilebilir biçimde düzenler. |
| 5 | 10.30–11.15 | Mini proje I: WDI dosyalarını oku, değişkenleri incele, ülke/yıl filtrele, yeni değişken oluştur ve tabloları birleştir | Bağımsız veri işleme akışını başlatır. |
| 5 | 11.30–12.15 | Mini proje II: gruplu özet üret, kontrolleri yap, çıktıyı CSV/RDS kaydet, yöntemini ve sonucu kısaca açıkla | Uçtan uca veri işleme görevini tamamlar. |

## 5. Günlük öğretim notları, veri ve ek içerik

### 1. Gün — R ile çalışma ve temel veri yapıları

**Temel veri/çıktı:** Küçük yapay veriler; ilk günün sonunda çalışan bir R scripti.

**B/C — Ek / web destek:** Karmaşık liste/matris indekslemesi, iç içe koşullar ve ek egzersizler.

**Gün sonu çıkış görevi:** Küçük bir tablo oluştur, koşullu bir değişken hesapla, açıklamalı scripti kaydet.

### 2. Gün — Kontrol yapıları, fonksiyonlar ve dosyalar

**Temel veri/çıktı:** Küçük yapay dosyalar, WDI CSV alt kümesi ve haven paketinin örnek SAS/SPSS dosyaları.

**B/C — Ek / web destek:** while ayrıntıları, özel SPSS eksikleri, dosya biçimi ayrıntıları, canlı veri tabanı bağlantısı.

**Gün sonu çıkış görevi:** Basit bir fonksiyon ve döngü yaz; CSV/Excel oku, kontrol et ve çıktı kaydet.

### 3. Gün — dplyr ile veri manipülasyonu I

**Temel veri/çıktı:** Önce 10–20 satırlık yapay veri; ardından kitapta bulunan WDI ülke/yıl göstergeleri.

**B/C — Ek / web destek:** İleri across(), karmaşık metin/tarih dönüşümleri ve ek uygulamalar.

**Gün sonu çıkış görevi:** WDI üzerinden koşullu filtreleme ve yeni gösterge içeren temiz tablo üret.

### 4. Gün — dplyr ile veri manipülasyonu II

**Temel veri/çıktı:** WDI geniş/uzun panel, ülkeler ve ülke metadata/gösterge sözlüğü.

**B/C — Ek / web destek:** Çoklu eşleşme ve relationship ayrıntıları, semi_join(), gelişmiş across(), ileri pivot.

**Gün sonu çıkış görevi:** Ülke/yıl anahtarıyla birleşim kur, gruplu özet ve pivot işlemi yap.

### 5. Gün — Modern R iş akışı ve mini proje

**Temel veri/çıktı:** WDI verileri; katılımcı başlangıç scripti, proje yönergesi, kontrol listesi.

**B/C — Ek / web destek:** Grafik, ek gösterge hesaplama, pivot veya alternatif çözüm; AI kullanımı serbest, doğrulama zorunlu.

**Gün sonu çıkış görevi:** Veri aktarımından kaydetmeye mini projeyi tamamla; temel kontrolleri göster.

## 6. Veri stratejisi

| Veri grubu | Kullanım | İlkeler |
|---|---|---|
| Küçük sentetik vektör/tibble | 1–3. gün; hata ve kavram öğretimi | 8–20 satır, anlaşılır değişkenler, anonim/sentetik |
| Kitabın WDI `countries.csv` ve `country_indicators.csv` | 2–5. gün; filtre, özet, koşul, proje | 2019 kesiti ile çok yıllı panel farkı açıklanır |
| WDI `country_indicators_long.csv`, `country_metadata.csv`, `indicator_dictionary.csv` | Join, pivot, metadata ve veri sözlüğü | Gösterge birimi, yıl, eksik değer ve kaynak notu korunur |
| CSV/Excel/RDS küçük alıştırma dosyaları | İçe/dışa aktarım | Yerel dosyalar hazırlanır; internet zorunlu olmaz |
| SAS `.sas7bdat` / SPSS `.sav` örnekleri | `haven::read_sas()`, `haven::read_sav()` | `haven` paketinin doğrulanan örnekleri kullanılabilir; lisans ve dosya erişimi hazırlıkta kontrol edilir |

**Veri tabanları:** `DBI` / `odbc` bağlantı akışı, güvenli kimlik bilgileri ve SQL sorgusu tanıtılır. Sınıfta canlı Oracle/PostgreSQL/SQL Server bağlantısı gerektirilmez; yerel SQLite örneği C materyali olabilir. Şifreler ve gizli bağlantı dizeleri asla depoya eklenmez.

**Veri kalite kontrolleri:** Okuma sonrası `dim()`, `names()`, `str()`/`glimpse()`, tür ve eksik sayısı; JOIN öncesi anahtar tekilliği ve eşleşme; çıktı sonrası satır sayısı ve beklenen değer kontrolü.

## 7. Modern R becerilerinin günlere dağılımı

- **Gün 1:** RStudio Project, `.R` scripti, Console/Source farkı, yardım, otomatik tamamlama, paket/namespace ve okunabilir isimlendirme.
- **Gün 2:** Projeye göreli yollar; güvenilir import; `haven` etiketleri; vektörleştirme ile döngü karşılaştırması; kodun tekrar kullanımında fonksiyon.
- **Gün 3:** `|>` akışı; tek sorumluluklu dönüşümler; küçük kontrol adımları; eksik değer bilinci.
- **Gün 4:** Güvenli JOIN; anahtar/satır kontrolü; gruplama sonrası çıktı düzeni; veri biçimi seçimi.
- **Gün 5:** Temiz başlangıçtan script yürütme; kaynak/çıktı klasörleri; Quarto ve GitHub'a kısa bakış; yapay zekâ önerisini çalıştırma, anlama, kontrol etme.

## 8. Mini proje (5. günün son iki oturumu)

**Senaryo:** “Ülkelerin sosyoekonomik göstergelerinin seçilen bir yıl için karşılaştırılması”. Katılımcıya çevrimdışı erişilebilir WDI alt kümesi, veri sözlüğü, görevler ve başlangıç `.R` dosyası verilir.

**Zorunlu:** Dosyaları oku → veri türlerini kontrol et → ülke/yıl seç → göstergeler için yeni değişken üret → uygun anahtarla birleştir → gruplu özet oluştur → kayıt sayısı/eksik/eşleşme kontrolleri yap → CSV veya RDS olarak kaydet → yöntemi 3–4 cümleyle açıkla.

**Opsiyonel:** Pivot, alternatif ülke grubu, ek kontrol, basit görsel veya farklı çıktı.

**AI politikası:** Yapay zekâ araçları serbest; araçtan alınan kodun anlamını açıklama, veri mahremiyetini koruma ve sonuçları bağımsız biçimde doğrulama zorunludur. İnternetsiz alternatif ve çözümler sağlanır.

## 9. Üretilecek eserler ve repo iskeleti

```text
r-training/
├── README.md
├── TRAINING_PLAN.md
├── _quarto.yml
├── index.qmd
├── program/                   # Genel program; tarihli uygulamalar ayrı
├── lessons/day01 ... day05/   # Konu anlatımı .qmd
├── slides/                    # Quarto revealjs sunumları
├── scripts/day01 ... day05/   # Konu bazlı açıklamalı .R kodları
├── exercises/                 # Katılımcı görevleri
├── solutions/                 # Eğitmen çözümleri
├── data/                      # Küçük, lisanslı/yayına uygun veri dosyaları
├── projects/mini-project/
├── resources/                 # Kaynakça, ipuçları, sık hatalar
└── instructor/                # Süre, kesme noktası ve sınıf yönetimi notları
```

Her konu için: öğrenme hedefi → neden/nerede kullanılır → basit örnek → veri örneği → mini egzersiz → sık hata → kaynak bağlantısı. Scriptler günlük tek uzun dosyaya mahkûm edilmez; konu dosyalarına ayrılır. Katılımcı çözümleri gerektiğinde aşamalı yayımlanır.

## 10. Çalışma aşamaları ve kabul ölçütleri

- [ ] **Aşama 1 — Tasarım:** 15 oturum, öğrenme çıktıları, A/B/C düzeyleri, gün sonu görevler ve ders süreleri kesinleştirildi. (Bu belge başlangıç referansıdır.)
- [ ] **Aşama 2 — Veri hazırlığı:** WDI alt kümesi ve sözlüğü seçildi; yerel CSV/Excel/RDS/SAS/SPSS örnekleri ve erişim/lisans kontrolleri hazır.
- [ ] **Aşama 3 — Ders materyalleri:** Konu bazlı scriptler; kod, egzersiz ve çözümler hazır.
- [ ] **Aşama 4 — Sunum ve site:** Quarto RevealJS sunumları, Quarto web sitesi, kolay indirme ve kitap bağlantıları hazır.
- [ ] **Aşama 5 — Kalite kontrol:** Kodlar temiz oturumda ve proje kökünden çalışıyor; eksik paket/dosya yok; çıktı doğrulandı; 45 dk süreler pilot edildi; ağ gerekmeyen alternatifler var.
- [ ] **Aşama 6 — Yayın:** Ayrı GitHub deposu, `README`, lisans, sürüm etiketi ve eğitim uygulamasına ait duyuru süreçleri kullanıcı onayıyla tamamlandı.

### Değişiklik yönetimi

Eğitim tarihleri ve katılımcı kitlesi bu genel plana gömülmez; `program/` altında bir uygulama sayfasında tanımlanır. Yeni kurum/format için günlük zorunlu öğrenme hedefleri korunur; örnekler ve B/C içerikler uyarlanır. İçerik değişikliği `CHANGELOG.md` kaydıyla izlenir. Kitap deposuna otomatik commit/push yapılmaz.

## 11. Temel kaynaklar ve referanslar

- [R Programlama Kitabı](https://mfatihtuzen.github.io/r-programlama/) — mevcut temel, veri manipülasyonu, dönüştürme, join ve dosya işlemleri.
- [R for Data Science, 2e](https://r4ds.hadley.nz/) — modern veri iş akışı.
- [dplyr belgeleri](https://dplyr.tidyverse.org/) ve [tidyr belgeleri](https://tidyr.tidyverse.org/).
- [haven belgeleri](https://haven.tidyverse.org/) — SAS/SPSS okuma ve etiketler.
- [Quarto belgeleri](https://quarto.org/docs/) — web sitesi ve RevealJS.
- [R Project for Statistical Computing](https://www.r-project.org/), [Posit RStudio IDE](https://posit.co/products/open-source/rstudio/).

**Not:** Güncel kaynak ve örnek dosya URL'leri veri toplama aşamasında tek tek doğrulanacak; kitapta mevcut WDI dosyaları ve lisans koşulları korunacak. Bu planda henüz gerçek sınıf süreleri test edilmiş değildir.
