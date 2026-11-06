# r-training — Konu bazlı script düzenine geçiş

Bu paket mevcut depoyu **otomatik olarak değiştirmez**. Yalnızca `resources/ogrenme-kaynaklari.qmd` dosyasının güncel hâlini ve konu bazlı adlandırılmış iki başlangıç scriptini içerir.

## 1. Dosyaları kopyalayın

- `resources/ogrenme-kaynaklari.qmd` dosyasını aynı yoldaki eski dosyanın üzerine yazın.
- `scripts/08-csv-excel-rds-aktarimi.R` ve `scripts/09-sas-spss-aktarimi.R` dosyalarını ekleyin.
- Önceki `scripts/day02/` dosyalarıyla içerik tekrarı oluşacağından yeni dosyalar yerleştirildikten sonra `scripts/day02/` klasörünü kaldırın. Diğer dosyalara dokunmayın.

## 2. Quarto menüsüne kaynakları ekleyin

Mevcut `_quarto.yml` içindeki `project.render` listesine `resources/ogrenme-kaynaklari.qmd` ekleyin. Mevcut `index.qmd` ve `program/index.qmd` satırlarını koruyun.

```yaml
project:
  type: website
  output-dir: docs
  render:
    - index.qmd
    - program/index.qmd
    - resources/ogrenme-kaynaklari.qmd
```

`website.navbar.left` listesine şunu ekleyin:

```yaml
      - text: "Öğrenme Kaynakları"
        href: resources/ogrenme-kaynaklari.qmd
```

Var olan `website` ve `format` ayarlarını değiştirmeyin.

## 3. Kontrol

RStudio projesinin kökünde:

```bash
quarto render
```

R Console üzerinden (gerekli paketler kuruluysa):

```r
source("scripts/08-csv-excel-rds-aktarimi.R")
source("scripts/09-sas-spss-aktarimi.R")
```

`outputs/` klasörü üretiliyorsa `.gitignore` içinde `/outputs/` satırı olduğundan emin olun.

`git status` ile yalnızca beklenen dosyaların değiştiğini kontrol ettikten sonra commit ve push yapın.

## 4. Daha sonraki yapı

- `scripts/` dosyaları konu sırasına göre `NN-konu-adi.R` olarak adlandırılır.
- Günlük/saatlik program `program/` altında bağımsız tutulur; konu dosyaları takvime bağlanmaz.
- Ders notları `.qmd`, uygulama scriptleri `.R`, veri dosyaları `data/` altında tutulur.
- İlk iki aktarım scripti başlangıç örnekleridir; nihai eğitim içeriği değildir.
- `TRAINING_PLAN.md` dosyasındaki gün bazlı örnek klasör yapısı ileride konu bazlı yeni düzenle güncellenmelidir.

**YouTube notu:** Kanal bağlantısı kullanıcının sağladığı adrestir. Kanal içeriği web üzerinden ayrıntılı doğrulanamadığından video başlığı ve süreleri eklenmemiştir.
