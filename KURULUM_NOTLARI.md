# r-training — Pedagojik v0.2: Kurulum / Geçiş

Bu paket ilk eğitim modülünü yeniden düzenler. Henüz tamamlanmamış konular için sahte bağlantı üretmez. **Mevcut veri dosyalarını, 08 ve 09 numaralı scriptleri, README.md, TRAINING_PLAN.md ve program/index.qmd dosyasını değiştirmez.**

## 1. Güvenli yerleştirme

1. RStudio Terminal'de `git status` ile çalışma ağacını kontrol et. Commit edilmemiş değişiklik varsa önce kaydet veya yedekle.
2. ZIP'i ayrı bir geçici klasöre aç. İçindeki `index.qmd`, `_quarto.yml`, `styles.css`, `lessons/`, `slides/`, `scripts/`, `exercises/`, `materials/` içeriğini `r-training/` ana klasörüyle **birleştirerek** kopyala.
3. Aynı isimli dosyalarda bu paketin sürümünü kullanmak istersen mevcut sürümleri Git geçmişinden geri alabileceğini unutma. Özellikle 08 ve 09 numaralı scriptleri **silme**.
4. Önceki `lessons/01-r-ile-ilk-adimlar.qmd` artık kullanılmıyor. Çift sayfa oluşturmaması için dosyayı sil veya repo dışına taşı. `_quarto.yml` yalnızca yeni dersleri render eder.
5. Mevcut `resources/ogrenme-kaynaklari.qmd` ve `program/index.qmd` dosyalarının yerinde bulunduğunu doğrula; bunlar bu pakette yoktur.

## 2. Kontrol

```
quarto render
quarto preview
```

Aşağıdaki sayfaları kontrol et:

- `/` ana sayfa
- `/lessons/01-r-ve-rstudio.html`
- `/lessons/02-ilk-r-komutlari.html`
- `/materials/`
- `/slides/00-acilis.html`

RStudio'da sırayla:

```r
source("scripts/01-r-ortami-ve-ilk-komutlar.R")
source("scripts/02-veri-tipleri-ve-yapilari.R")
```

> Bunlar ilk kod testi içindir. Yüz yüze eğitimde scripti `source()` ile topluca çalıştırmak yerine RStudio editöründe sırayla çalıştırın.

## 3. Git

```
git status
git add -A
git status
git commit -m "Rebuild introductory training module with learning sequence"
git push origin main
```

`git add -A` sonrasında izlenmesini istemediğin dosya olmadığına emin ol. `docs/` GitHub Pages için bilinçli olarak izlenir, `outputs/` ignore edilmelidir.

## 4. İçerik yaklaşımı

- Web sitesi kalıcı bir öğrenme yolu, bir dosya listesi değil.
- Sunum R ve ortamını tanıtır; kod anlatımını tekrarlamaz.
- Her yeni kavram kullanılmadan önce tanımlanır.
- Her sayfada önceki/sonraki bölüm bağlantısı ve ilgili script bulunur.
- Geniş kapsamlı referans için R Programlama Kitabı'na geçilir.
- Şimdilik yalnızca ilk iki konu webde yayınlanır; kalan konu sayfaları hazırlandıkça menüye eklenir.
