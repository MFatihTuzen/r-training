# ==============================================================
# 06 | KULLANICI TANIMLI FONKSIYONLAR
# R Programlama Egitimi - konu bazli uygulama
# On kosullar: nesne, vektor, if / else, for, NA
# Gereken paket: YOK (base R)
# Kullanim: RStudio'da bolumleri sirayla Ctrl+Enter ile calistirin.
# ==============================================================

# 1. Neden fonksiyon?
fiyat <- 120
adet <- 3
fiyat * adet

# 2. function() ile tanimlama ve cagirma
tutar_hesapla <- function(fiyat, adet) {
  fiyat * adet
}

tutar_hesapla(120, 3)  # 360
tutar_hesapla(75, 4)   # 300
stopifnot(tutar_hesapla(50, 6) == 300)

# 3. Argumanlari adlariyla verme
print(tutar_hesapla(adet = 3, fiyat = 120))

# 4. Varsayilan arguman
indirimli_tutar <- function(fiyat, indirim_orani = 0.10) {
  fiyat * (1 - indirim_orani)
}

indirimli_tutar(200)       # 180
indirimli_tutar(200, .20)  # 160
indirimli_tutar(200, 0)    # 200
stopifnot(indirimli_tutar(200) == 180)

# 5. Son ifade ve return()
kare_al <- function(x) {
  x^2
}
stopifnot(kare_al(4) == 16)

puan_durumu <- function(puan) {
  if (puan >= 50) {
    return("Gecti")
  }
  "Kaldi"
}
stopifnot(puan_durumu(75) == "Gecti")
stopifnot(puan_durumu(40) == "Kaldi")

# 6. NA icin guvenli durum
puan_durumu_guvenli <- function(puan) {
  if (is.na(puan)) {
    return(NA_character_)
  }
  if (puan >= 50) return("Gecti")
  "Kaldi"
}

print(puan_durumu_guvenli(NA_real_))
stopifnot(is.na(puan_durumu_guvenli(NA_real_)))

# 7. Basit girdi kontrolu: sadece tek sayisal deger
puan_durumu_kontrollu <- function(puan) {
  stopifnot(is.numeric(puan), length(puan) == 1L)
  if (is.na(puan)) return(NA_character_)
  if (puan >= 50) "Gecti" else "Kaldi"
}
stopifnot(puan_durumu_kontrollu(55) == "Gecti")

# Hata ureten satirlari SINIFTA tek tek, yorumdan cikararak deneyin.
# puan_durumu_kontrollu("elli")
# puan_durumu_kontrollu(c(45, 55))
# puan_durumu(NA_real_)

# 8. Fonksiyon kapsami: yerel nesneler
iki_kat <- function(x) {
  sonuc <- x * 2
  sonuc
}
print(iki_kat(8))
# 'sonuc' fonksiyon disinda bulunmaz; asagidaki satir hata verir.
# print(sonuc)

# 9. Acik bagimlilik: her gerekli degeri arguman olarak verin
vergi_ekle <- function(tutar, oran) {
  tutar * (1 + oran)
}
stopifnot(vergi_ekle(100, 0.20) == 120)

# 10. Vektorel fonksiyon: for gerekmiyor
artis_uygula <- function(deger, oran = 0.05) {
  deger * (1 + oran)
}
sonuclar <- artis_uygula(c(100, 120, 150))
print(sonuclar)
stopifnot(isTRUE(all.equal(sonuclar, c(105, 126, 157.5))))

# 11. Yapay satis tablosunda uygulama
satislar <- data.frame(
  urun = c("A", "B", "C"),
  adet = c(2, 4, 3),
  birim_fiyat = c(100, 75, 150),
  stringsAsFactors = FALSE
)
satislar$tutar <- tutar_hesapla(satislar$birim_fiyat, satislar$adet)
print(satislar)
stopifnot(identical(satislar$tutar, c(200, 300, 450)))

# 12. Mini uygulama: veri temizlemede basit yeniden kullanim
# Bos metinleri eksik deger olarak isaretleyen fonksiyon
boslari_na_yap <- function(x) {
  x[x == ""] <- NA_character_
  x
}
print(boslari_na_yap(c("Ankara", "", "Izmir")))
# NOT: Bu fonksiyon karakter vektorleri icin tasarlanmistir.

# 13. Ogrenme kontrolu
# - Hangi fonksiyon vektor alabilir, hangisi tek deger bekler?
# - 'stopifnot' neden fonksiyonun en basinda kullanildi?
# - Fonksiyonun varsayilan argumanini degistirip sonucu deneyin.
