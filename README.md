# R Programlama Eğitimi

R programlama temellerini ve veri hazırlamayı **uygulayarak** öğreten, Türkçe ve açık erişimli eğitim materyalleri.

- **Eğitim sitesi:** https://mfatihtuzen.github.io/r-training/
- **R Programlama Kitabı:** https://mfatihtuzen.github.io/r-programlama/
- **Video kaynakları:** https://www.youtube.com/@RistatistikAkademi

## Nasıl kullanılır?

1. R ve RStudio'yu kurun; `r-training.Rproj` dosyasıyla projeyi açın.
2. [Eğitim İçeriği](https://mfatihtuzen.github.io/r-training/lessons/01-r-ve-rstudio.html) sayfasında konuları sırayla izleyin.
3. `scripts/` dosyalarını RStudio'da çalıştırın; `exercises/` alıştırmalarını çözün.
4. Eğitim veri dosyaları `data/` içindedir. Scriptleri proje kök dizininden çalıştırın.

## Proje yapısı

- `lessons/`: Quarto ders sayfaları
- `slides/`: Quarto RevealJS açılış sunumu
- `scripts/`, `exercises/`: uygulamalar ve alıştırmalar
- `data/`: yayımlanabilir örnek veri dosyaları
- `materials/`, `resources/`, `program/`: materyal dizini, kaynaklar ve örnek eğitim programı
- `docs/`: GitHub Pages için oluşturulan HTML çıktısı (Git tarafından izlenir)
- `TRAINING_PLAN.md`: geliştirme yol haritası (web menüsüne eklenmez)

## Yerel önizleme

```bash
quarto preview
```

Yayımlanacak dosyaları oluşturmak için `quarto render` kullanılır. `docs/` çıktısı, Quarto kaynaklarıyla birlikte GitHub'a gönderilir.

## Geliştirme ilkesi

Bu repo, kitabın kopyası değildir. **Kavram → uygulama → kontrol → egzersiz** akışını izler. Eğitim içeriği kurum, tarih ve program süresinden bağımsızdır; farklı eğitimlerde seçki olarak kullanılabilir.

**Veri:** WDI alt kümeleri için kaynak ve tanımlar `DATA_PLAN.md` ile `data/` altında açıklanmıştır. Yapay örnekler gerçek kayıt olarak sunulmaz. Haricî içeriklerin lisansları ayrıca değerlendirilmelidir.
