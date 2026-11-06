# r-training veri paketi — Kurulum

Bu ZIP, var olan GitHub deposunu **değiştirmeden üzerine eklenecek yeni dosyaları** içerir. Proje klasöründeki mevcut `_quarto.yml`, `README.md`, `index.qmd`, `TRAINING_PLAN.md` veya `.gitignore` dosyaları pakette yer almaz ve üzerine yazılmaz.

1. ZIP içindeki `data/`, `resources/`, `scripts/` klasörlerini ve `DATA_PLAN.md` dosyasını `r-training` klasörüne çıkarın.
2. RStudio Terminal'den `git status` ile eklenenleri kontrol edin.
3. RStudio Console'da (paketler kuruluysa) `source("scripts/day02/01_import_export.R")` ve `source("scripts/day02/02_sas_spss.R")` deneyin.
4. `outputs/` klasöründeki üretilen dosyalar örnek çıktı dosyalarıdır. `.gitignore` içine `/outputs/` eklenmesi önerilir.
5. `resources/ogrenme-kaynaklari.qmd` dosyası sitede görünmesi istendiğinde `_quarto.yml` içindeki `project.render` listesine ve navbar'a eklenmelidir. Şimdilik otomatik olarak eklenmez.
6. Kontroller başarılıysa `git add DATA_PLAN.md data/ resources/ scripts/`, ardından commit/push yapılabilir.

**YouTube kanal bağlantısı:** Henüz bilinmediğinden uydurulmamıştır. Doğru kanal veya oynatma listesi URL'si öğrenildiğinde kaynak sayfasına eklenecek.
