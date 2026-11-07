# 08 · Dosyalarla Çalışma — Uygulama Soruları

**Ön koşul:** `r-training.Rproj` açık. Çalışma dizini proje kökü. Üretilen dosyalar `outputs/` altına kaydedilecek. **Bu dosya gerçek veri içermez.**

## A · Sınıfta birlikte

1. `getwd()`, `file.exists()` ve `list.files()` ile `personel.csv` dosyasını bul. Dosya adını bozunca ne oluyor?
2. `utils::read.csv()` ve `readr::read_csv()` çıktılarını `class()`, `str()` ve `dim()` ile karşılaştır.
3. `import_semicolon.csv` dosyasını `read_csv()` ile sonra `read_csv2()` ile oku. Hangisi doğru? Neden?
4. `coklu_sayfa_rapor.xlsx` içindeki sayfaları listele. `Baslikli_Rapor` sayfasında başlıkların dördüncü satırda olduğunu keşfet.
5. `skip = 3`, `range = "Baslikli_Rapor!A4:D8"` ve `n_max = 2` parametrelerini ayrı ayrı dene. Satır sayılarını karşılaştır.
6. `Veri` sayfasındaki `001` değerinin baştaki sıfırı neden kaybedebileceğini göster. Sütunu metin tipinde oku.
7. Bir nesneyi CSV ve RDS olarak kaydet; tekrar yükle, `class()` ve `identical()` ile karşılaştır.

## B · Zaman kalırsa

8. `read_csv2()` ile okunan veri için beklenen sütun tiplerini açıkça belirtmeyi dene. `spec()` ve `problems()` çıktısını yorumla.
9. `openxlsx2::write_xlsx()` ile iki sayfalı Excel çıktısı üret. Sayfa adları anlamlı olsun.
10. `haven::read_sav()` ve `read_sas()` ile `iris` örneklerini oku; `attributes()` ve `haven::as_factor()` kullanarak etiketleri karşılaştır.
11. `outputs/` klasörünü silmeden, `git status` sonucunda çıktı dosyaları neden görünmemeli?

## C · Bağımsız çalışma

12. WDI 2019 dosyasını oku. Ülke kodlarının tiplerini ve gösterge birimlerini kontrol et. Henüz grup hesaplaması yapmadan veri türlerini değerlendir.
13. Hatalı bir yol, hatalı CSV ayıracı, hatalı sütun tipi ve kilitli Excel dosyası için birer hata giderme notu yaz.

**Kontrol sorusu:** Bir dosya sorunsuz okunmuşsa verinin doğruluğu garanti midir? İki ayrı gerekçeyle açıkla.

**Kaynak:** [08 · Dosyalar ve veri aktarımı](../lessons/08-dosyalar-ve-veri-aktarimi.qmd).
