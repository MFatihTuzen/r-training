# r-training — İlk materyallerin eklenmesi

Bu ZIP mevcut `README.md`, `TRAINING_PLAN.md`, `_quarto.yml`, `index.qmd` ve veri dosyalarının üzerine yazmaz. Yalnızca `resources/ogrenme-kaynaklari.qmd` dosyasını günceller ve ilk materyalleri ekler.

## 1. Dosyaları çıkarma

ZIP içindeki `slides/`, `lessons/`, `scripts/`, `exercises/`, `resources/` dizinlerini `r-training/` köküne çıkarın.

## 2. `_quarto.yml` içindeki project.render listesi

Mevcut `project.render` listesindeki `index.qmd`, `program/index.qmd`, `resources/ogrenme-kaynaklari.qmd` öğelerini koruyun. Bunlara ekleyin:

```yaml
    - lessons/01-r-ile-ilk-adimlar.qmd
    - slides/00-acilis.qmd
```

`slides/00-acilis.qmd` kendi YAML'inde `format: revealjs` olarak tanımlanmıştır. Çıktısı `docs/slides/00-acilis.html` olacaktır.

## 3. Navigasyon

Mevcut `website.navbar.left` içindeki bağlantıları koruyun; bunları da ekleyin:

```yaml
      - text: "İlk Ders"
        href: lessons/01-r-ile-ilk-adimlar.qmd
      - text: "Açılış Sunumu"
        href: slides/00-acilis.qmd
```

Not: RevealJS sayfaları ayrı biçimde render edilir. Quarto sürüm ve navbar davranışına göre sunum linkini doğrudan `slides/00-acilis.html` biçiminde de verebilirsiniz.

## 4. `index.qmd` içeriğini sadeleştirme

Ana sayfadaki `## Temel kaynaklar` bölümünü ve altında tekrarlanan bağlantıları kaldırın. Bunun yerine kısa bir satır yeterlidir:

`Ayrıntılı kitap, video ve paket belgeleri için [Öğrenme Kaynakları](resources/ogrenme-kaynaklari.qmd) sayfasına bakın.`

Site yalnızca Aralık 2026 sınıfına özgü değil; ana sayfadaki zaman/yer alanları gerekirse 'Örnek eğitim programı' olarak adlandırılabilir.

## 5. Render kontrolü

```bash
quarto render
```

`docs/lessons/01-r-ile-ilk-adimlar.html` ve `docs/slides/00-acilis.html` dosyalarının oluştuğunu kontrol edin. Sunumu `quarto preview slides/00-acilis.qmd` ile ayrı da açabilirsiniz.

## 6. Git öncesi kontrol

```bash
git status
```

Beklenmedik çıktılar/şifreler olmadığını kontrol ettikten sonra:

```bash
git add _quarto.yml index.qmd resources/ lessons/ slides/ scripts/01-r-ortami-ve-ilk-komutlar.R scripts/02-veri-tipleri-ve-yapilari.R exercises/ docs/
git commit -m "Add opening presentation and first R training materials"
git push origin main
```

## 7. Test notu

R ve Quarto araçları bu üretim ortamında bulunmadığı için `.R` scriptleri R yorumlayıcısında, Quarto sayfaları da yerel Quarto motorunda çalıştırılarak doğrulanmadı. Dosyalar yerel makinede test edildikten sonra yayımlanmalıdır.
