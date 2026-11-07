# Mini Proje — Ülkelerin Sosyoekonomik Göstergeleri (2019)

**Hedef:** WDI ülke-yıl verisini kontrol ederek 2019 ülke tablosu ve bölge özeti üretmek.

## Başlamadan önce

RStudio'da `r-training.Rproj` açın. `readr` ve `dplyr` kurulu olmalı. İnternet gerekmez. `data/wdi/` klasöründe `wdi_panel_2015_2022.csv` ve `country_metadata.csv` dosyaları bulunmalı.

## Zorunlu görevler (A)

1. Panel ve metadata dosyalarını okuyun. Satır sayısı, sütun isimleri, yıl aralığı ve kritik eksikleri kontrol edin.
2. `(country_code, year)` ve `country_code` anahtarlarının tekilliğini doğrulayın.
3. Yıl = 2019 seçin ve kişi başına GSYH, işsizlik, internet kullanımı göstergelerini alın.
4. Kişi başına GSYH için **20.000 USD eğitim eşiğine** göre sınıf üretin. Eksikleri yanlışlıkla düşük sınıfa atamayın.
5. Metadata'dan `region` ve `income_group` sütunlarını ekleyin; `anti_join` ile eşleşmeyenleri bulun ve satır sayısındaki değişimi kontrol edin.
6. Bölge bazında ülke sayısı, işsizlik verisi bulunan ülke sayısı ve mevcut ülkelerin **ağırlıksız** işsizlik ortalamasını hesaplayın.
7. Ülke tablosu ve bölge özetini CSV olarak `outputs/` içine kaydedin; en az bir dosyayı yeniden okuyarak doğrulayın.
8. Yönteminizi 3–4 cümleyle açıklayın: veri yılı, JOIN anahtarı, eksikler ve ortalama yorumu.

## Pekiştirme (B)

- İnternet kullanım oranını iki sınıfa ayırın; `NA` olanları ayrı koruyun.
- `across()` ile seçili üç göstergedeki eksik sayısını bulun.

## Ek çalışma (C)

- İki yıl için kişi başına GSYH değişimini hesaplayın.
- Aynı ülke tablosunu uzun formata çevirip yeniden geniş formata getirin.

## Kontrol soruları

- Bir ülkede `NA` varsa neden sıfır kabul edemeyiz?
- JOIN sonrasında ülke sayısı artarsa ilk bakacağınız şey nedir?
- Bölgesel ortalama işsizlik oranını neden resmî bölgesel işsizlik oranı diye adlandırmıyoruz?

**Kaynak:** Dünya Bankası WDI verilerinin R Programlama Kitabı için hazırlanmış eğitim alt kümesi. Veri tarihleri, birimleri ve eksikler dosyanın kaynak belgelerinde açıklanır.
