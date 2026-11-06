# 04 — Koşullu İfadeler: Uygulamalar

Önce çözümü kendiniz yazın. Her görevde beklenen sonucu **önceden tahmin edin**, sonra çalıştırın.

## 1. Kolay — Sıcaklık uyarısı

`sicaklik <- 32` için sıcaklık 30'dan büyükse `"Sıcak"`, değilse `"Normal"` metnini `durum` nesnesine atayın. 30 ve 29 değerlerini de deneyin.

## 2. Kolay — Sınav sonucu

`puan <- 50` için 50 ve üzerindeyse `"Geçti"`, değilse `"Kaldı"` sonucu üreten `if/else` yazın. 49, 50 ve 51'i test edin.

## 3. Orta — Kademeli sınıflandırma

Bir `puan` için 85 ve üzeri `"Pekiyi"`, 70–84 `"İyi"`, 50–69 `"Geçer"`, diğer durum `"Başarısız"` olsun. `else if` kullanın. 49, 50, 69, 70, 84, 85 değerlerini kontrol edin.

## 4. Orta — Eksik değeri ayır

3. görevde `puan <- NA` olduğunda hata çıkmadan `"Bilgi eksik"` sonucunu verin. `is.na()` kullanın.

## 5. Orta — İki koşulu birlikte değerlendir

`yas <- 19`, `kayit_var <- TRUE` iken yalnızca yaş 18 ve üzeri **ve** kaydı olan kişiye `"Uygun"` deyin. `&` kullanın; kaydı `FALSE` yapıp tekrar deneyin.

## 6. Bir adım ileri — Vektörel karar

`puanlar <- c(45, 60, 82, NA)` için `ifelse()` ile sırasıyla `"Kaldı"`, `"Geçti"`, `"Geçti"`, `"Eksik"` sonuçlarını üretin. Tek bir `if` ile neden yapamadığınızı açıklayın.

## 7. İsteğe bağlı — İş kuralını sınayın

Sipariş 500 TL ve üzerindeyse kargo 0 TL, aksi hâlde 50 TL olsun. `500` ve `499.99` için farklılık bekler misiniz? Neden?

**Kontrol ölçütü:** Kod çalışıyor mu? Sınır değerlerini test ettiniz mi? `NA` için davranışı belirlediniz mi? Kodunuzun neden doğru olduğunu açıklayabiliyor musunuz?
