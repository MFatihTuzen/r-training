# 05 — Döngüler: Alıştırmalar

**Ön koşullar:** Vektörler, indeksleme, `if/else`. Her soruda kodu çalıştırmadan önce beklediğin sonucu yaz. Başlangıç dosyası: [`05-donguler.R`](../scripts/05-donguler.R).

## A — Temel

1. `for` kullanarak 2, 4, 6, 8 sayılarını sırasıyla yazdır. Döngü kaç kez çalıştı?
2. `sehirler <- c("Ankara", "Izmir", "Bursa")` vektöründe `for` ile her şehre "Merhaba" mesajı yazdır.
3. `sayac <- 2` ile başlayan bir `while` döngüsünde sayacı ikişer artırarak 2, 4, 6, 8 değerlerini yazdır. Döngünün nasıl sona erdiğini açıkla.

## B — Uygulama

4. `fiyat <- c(100, 250, 80, 150)` vektöründe fiyatların %10 artırılmış değerlerini **önceden sonuç vektörü oluşturarak** `for` ile hesapla. Sonucu `fiyat * 1.10` ile karşılaştır.
5. `puan <- c(60, 48, 50, 90)` değerlerini `>= 50` koşuluyla "Geçti" ve "Kaldı" olarak sınıflandır. Önce `for` + `if/else`, sonra `ifelse()` ile çöz. Kodlar aynı sonucu veriyor mu?
6. `for (i in 1:6)` döngüsünü kullanarak `i == 3` için önce `next`, sonra `break` davranışını karşılaştır. Her iki çıktıyı yaz.

## C — Düşün ve kontrol et

7. Aşağıdaki kod **neden tehlikelidir**? **Çalıştırmadan** eksik satırı belirt.

```r
sayac <- 1
while (sayac <= 5) {
  print(sayac)
}
```

8. `x <- numeric(0)` iken `1:length(x)` ve `seq_along(x)` ne üretir? `for` döngüsü için hangisi daha güvenli?
9. `olcum <- c(95, NA, 110)` için "Eksik", "Sınır üstü", "Sınırda veya altında" sonucunu verecek bir `for` + `if` yapısı yaz. Eksik değeri kontrol etmezsen ne olabilir?

**Kapanış:** Bir döngünün gerekli olmadığı bir örnek yaz ve vektörel alternatifini göster. Kodu seçme gerekçeni bir cümleyle açıkla.

**Not:** Bu çalışma, eğitim sırasında önce bireysel denenir. Çözümleri ayrı kaynakta paylaşacağız.
