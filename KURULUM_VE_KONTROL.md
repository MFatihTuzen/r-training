# Kurulum ve kontrol — Modül 07 (v0.6)

Bu paket **yalnızca yeni ve bağlantılı değişen dosyaları** içerir. Önceki modülleri, `data/`, 08–09 numaralı taslak scriptleri ve kişisel dosyaları değiştirmez.

## Kurulum

1. ZIP'i ayrı bir konuma açın ve içindeki klasörleri mevcut `r-training/` köküne **birleştirerek** kopyalayın. Mevcut aynı adlı `_quarto.yml`, `materials/index.qmd` ve `lessons/06-donguler.qmd` dosyaları güncellenecek.
2. Repo henüz GitHub'a push edilmediyse bu bir sorun değil; yerel `quarto preview` üzerinden devam edin. Ancak yerelde son paketten sonra kendiniz düzenlediğiniz `_quarto.yml` varsa üzerine yazmadan önce karşılaştırın.
3. Yeni dosyalar: `lessons/07-fonksiyonlar.qmd`, `scripts/06-fonksiyonlar.R`, `exercises/06-fonksiyonlar.md`.

## Kontrol

RStudio Console:

```r
source("scripts/06-fonksiyonlar.R", encoding = "UTF-8")
```

RStudio Terminal:

```bash
quarto render
quarto preview
```

Webde `Eğitim İçeriği` menüsünde `07 · Fonksiyonlar` görünmeli; materyal kartında ders, script ve egzersiz bağlantıları çalışmalı; 06 döngüler sayfasının **Sonraki** bağlantısı yeni derse ulaşmalı.

## Eğitimde süre yönetimi

Sınıf çekirdeği (A): motivasyon, ilk fonksiyon, parametre/argüman, varsayılan değer ve temel çağrı. Öğretmenle beraber 1–3. alıştırmalar.

Zaman kalırsa (B): `return()`, `NA`, vektörel fonksiyon ve veri tablosuna uygulama.

Web kaynağı (C): kapsam, girdi kontrolü, ek örnekler, 7–11. alıştırmalar. Bu sıralama 15 ders saatlik programın günler arasında taşmamasına yardımcı olur.

**Not:** Bu paketin kaynakları oluşturuldu ve bağlantılar statik olarak denetlendi. Bu ortamda R veya Quarto CLI yüklü olmadığından çalışma ve HTML render testi yapıldığı iddia edilmiyor.
