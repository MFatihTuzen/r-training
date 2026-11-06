# 06 — Fonksiyonlar: Alıştırmalar

**Ön koşullar:** Nesneler, vektörler, `if/else`, döngüler, `NA` ve temel `data.frame()` kullanımı. Önce `scripts/06-fonksiyonlar.R` dosyasını inceleyin. Problemler küçük yapay veriler üzerindedir.

## A — Temel (önce sınıfta deneyin)

1. `dikdortgen_alan()` adında, `en` ve `boy` parametrelerini alan bir fonksiyon yazın. `en = 4`, `boy = 7` için sonucu tahmin edip doğrulayın.
2. `selamla()` adında, `isim` parametresi alan ve `paste()` kullanarak `Merhaba, Ayse` biçiminde sonuç üreten bir fonksiyon yazın.
3. `kdvli_tutar()` fonksiyonu yazın. `tutar` zorunlu, `oran` varsayılan olarak `0.20` olsun. `kdvli_tutar(100)` ve `kdvli_tutar(100, .10)` sonuçlarını karşılaştırın. (Oranlar öğreticidir.)
4. `mutlak_fark(a, b)` fonksiyonu ile iki sayının mutlak farkını `abs()` kullanarak hesaplayın.

## B — Pekiştirme

5. `basari_durumu(puan)` fonksiyonunu yazın. Puan 50 veya üstüyse `"Gecti"`, değilse `"Kaldi"` döndürsün. `puan = 50` sınırını test edin.
6. Beşinci soruya `NA` kontrolü ekleyin. Eksik puan için karakter türünde `NA` döndürsün. Bir vektörü doğrudan verdiğinizde ne olur? Neden?
7. `yuzde_degisim(eski, yeni)` fonksiyonunu yazın: `(yeni - eski) / eski * 100`. `eski = 0` olduğunda ne yapmanız gerektiğini tartışın. Sıfır için `NA_real_` döndürmeyi deneyin.
8. `iki_kat()` fonksiyonunun içinde tanımlanan `sonuc` nesnesini fonksiyon dışında okumayı deneyin. Hata neden oluşuyor? Dışarıdaki aynı isimli bir nesne varsa ne olur?

## C — İsteğe bağlı uygulama

9. Aşağıdaki yapay tabloyu kurun, `hesapla_tutar(fiyat, adet)` fonksiyonu ile yeni `tutar` sütunu ekleyin. İkinci satırın tutarını doğrulayın.

```r
urunler <- data.frame(
  urun = c("Kalem", "Defter", "Dosya"),
  fiyat = c(12, 35, 20),
  adet = c(4, 2, 5)
)
```

10. `artis_uygula()` fonksiyonuna bir vektör gönderin ve aynı sonucu bir `for` döngüsüyle hesaplayın. Hangi yaklaşım daha kısa ve okunabilir? İkisinin çıktısını `all.equal()` ile karşılaştırın.
11. `toplam_puan()` adında, sayısal puan vektörünü alan bir fonksiyon yazın. `na.rm = FALSE` varsayılanını tanımlayın ve bunu `sum()` fonksiyonuna iletin. Eksik değer içeren vektörde iki çağrının farkını açıklayın.

## Kısa düşünme soruları

- Fonksiyonun **parametresi** ile çağrıdaki **argümanı** nasıl ayırt edersiniz?
- `if` içeren bir fonksiyon neden her zaman vektörle çalışmaz?
- Fonksiyonun dış ortamdan değişken alması hangi riskleri taşır?
- Fonksiyon yazmak ile kodu script içinde sırayla çalıştırmak ne zaman farklı ihtiyaçlara cevap verir?

**Kaynak:** [07 · Fonksiyonlar ders sayfası](../lessons/07-fonksiyonlar.qmd) · [R Programlama Kitabı](https://mfatihtuzen.github.io/r-programlama/)
