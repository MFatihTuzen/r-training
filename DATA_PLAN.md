# Eğitim veri paketi — Veri planı (v0.1)

Bu dosya **r-training** eğitim deposu içindir. R Programlama Kitabı'nın kopyası değildir; derslerde çözülmesi gereken uygulama problemlerini destekler.

## Veri kullanım matrisi

| Veri | Gün / oturum | Eğitim amacı |
|---|---|---|
| `data/toy/personel.csv` | Gün 1–3 | Veri tipleri, vektör, koşul, döngü, fonksiyon, eksik değer, `filter()` / `mutate()` |
| `data/toy/personel.xlsx` | Gün 2 | Excel içe aktarma, CSV ile veri tipi karşılaştırma |
| `data/toy/birimler.csv` | Gün 3–4 | Anahtar, `left_join()`, eşleşme kontrolü |
| `data/toy/import_semicolon.csv` | Gün 2, ek | `;` ayracı, ondalık virgül, UTF-8, boş alan |
| `data/wdi/wdi_2019.csv` | Gün 3 | Temel `filter()`, `select()`, `mutate()`, sınıflandırma |
| `data/wdi/wdi_panel_2015_2022.csv` | Gün 3–5 | Ülke-yıl panelinde filtre, yıllara göre toplulaştırma |
| `data/wdi/wdi_long_2015_2022.csv` | Gün 4, ek | Uzun/geniş dönüşümü |
| `data/wdi/country_metadata.csv` | Gün 4–5 | Ülke koduyla birleştirme, bölgelere göre özet |
| `data/wdi/indicator_dictionary.csv` | Gün 3–5 | Değişken anlamı ve ölçü birimi sorgulama |
| `haven` paket örnek SAS/SPSS dosyaları | Gün 2 | `read_sas()`, `read_sav()`, etiketli değişkenlere giriş |

## Kapsam ve doğruluk

- WDI verileri **R Programlama Kitabı** projesinin 8 Ağustos 2026 tarihli oluşturma özeti ve dosyalarından alınmış bir **eğitim alt kümesidir**. Canlı/güncel WDI sorgusu değildir.
- 2015–2022 yılları arasında 217 ülke × 8 yıl = **1.736 satır** geniş panel; 2019 için **217 satır**; 8 gösterge uzun formatta **13.888 satır**.
- Panelde eksik değerler korunmuştur. Kullanılan göstergeler: `population_total`, `gdp_per_capita_usd`, `gdp_growth_pct`, `inflation_consumer_pct`, `unemployment_total_pct`, `life_expectancy_total`, `internet_users_pct`, `co2_per_capita`.
- Ekonomik büyüme, enflasyon gibi göstergelerin ülke-yıl bazında farklı veri kapsamları olabilir. Eksik değerleri sıfır sanmayın.
- `personel` ve `birimler` dosyaları **tamamen sentetik**tir; gerçek kişiler veya kurumsal maaş verisi değildir. `maas` yalnızca öğretici, kurgusal bir alandır.
- Veri sözlüğündeki WDI açıklamalarının ve kaynak kuruluşlarının orijinal içerikleri korunmuştur.

## Kaynaklar ve izinler

**Kaynak:** World Bank, World Development Indicators (WDI), kitap için oluşturulmuş eğitim alt kümesi; erişim/oluşturma özeti: 2026-08-08. https://databank.worldbank.org/source/world-development-indicators

**Kullanım:** Dünya Bankası açık verilerinde genellikle CC BY 4.0 geçerlidir; üçüncü taraf göstergelerinde farklı koşullar bulunabilir. Veri ve her göstergenin kaynak/izin notunu, `indicator_dictionary.csv` ve Dünya Bankası koşulları üzerinden doğrulayın: https://data.worldbank.org/summary-terms-of-use

**Kitap:** https://mfatihtuzen.github.io/r-programlama/

## Henüz pakete eklenmeyenler

- SAS `.sas7bdat` ve SPSS `.sav` ikili dosyaları **pakette yoktur**. `scripts/day02/02_sas_spss.R` paket içindeki `haven` örnek dosyalarını yerel kurulumdan okur. Sınıf öncesinde `haven` kurulmuş olmalıdır.
- `RDS` dosyasını `scripts/day02/01_import_export.R` katılımcının bilgisayarında kendisi üretir. Böylece `saveRDS()` / `readRDS()` öğretilebilir.
- Veri tabanı bağlantısı için gerçek parola, bağlantı dizesi ve kurumsal veriler depoya konulmaz.

## Güvenilirlik testi

Dersler başlamadan önce Excel/CSV okumayı, `haven` kurulumunu, `quarto render` sonucunu ve Türkçe karakterleri **katılımcı bilgisayarında** doğrulayın. Bu veri paketi üretilirken R kodları R ortamında çalıştırılamadı; paketler R'de ayrıca test edilmelidir.
