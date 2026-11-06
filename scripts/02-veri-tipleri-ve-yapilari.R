# =====================================================================
# R PROGRAMLAMA EGITIMI | 02 - VERI TIPLERI VE VERI YAPILARI
# Ilgili sayfa: lessons/03-veri-tipleri-ve-yapilari.qmd
# On kosul: 01 numarali script (atama, c(), hazir fonksiyonlar)
# Uygulama: Ustten alta, bolum bolum (Ctrl+Enter).
# Not: Bu dosya base R ile tamamen calisir; tibble istege baglidir.
# =====================================================================

# 1. Veri tipleri -------------------------------------------------------
yas <- 25
sehir <- "Ankara"
calisiyor <- TRUE

class(yas)
class(sehir)
class(calisiyor)
class(25)
class(25L)
typeof(25)
typeof(25L)

# DENEME: Bunlar ayni tipte mi?
sayi_metin <- "150"
sayi <- 150
class(sayi_metin)
class(sayi)
# sayi_metin + 10  # Bilerek hatali ornek: sayi yerine metin

# 2. Vektorler ve tip donusumu -----------------------------------------
puanlar <- c(60, 75, 90)
class(puanlar)
length(puanlar)

karisik <- c(1, 2, "uc")
karisik
class(karisik)  # Sayilar da metne donusturulmustur

puanlar[1]
puanlar[c(1, 3)]
puanlar[puanlar > 70]

# 3. Eksik degerler -----------------------------------------------------
notlar <- c(60, 75, NA, 90)
is.na(notlar)
sum(is.na(notlar))
mean(notlar)
mean(notlar, na.rm = TRUE)
# notlar == NA  # Yanlis; eksik kontrolu icin is.na() kullan

# 4. Data frame: tablosal veri -----------------------------------------
personel <- data.frame(
  ad = c("Ali", "Ayşe", "Deniz", "Ece"),
  yas = c(28, 35, 31, NA),
  birim = c("A", "B", "A", "B"),
  aktif = c(TRUE, TRUE, FALSE, TRUE)
)

personel
str(personel)
names(personel)
dim(personel)
head(personel)

personel$yas
personel[1, ]
personel[, "ad"]
personel[1:2, c("ad", "yas")]

# KONTROL 1: Kac gozlem ve degisken var?
nrow(personel)
ncol(personel)
# KONTROL 2: Yas icin kac eksik var?
sum(is.na(personel$yas))
# KONTROL 3: Eksik degerleri cikardigimizda ortalama yas?
mean(personel$yas, na.rm = TRUE)

# 5. Matris ve liste ----------------------------------------------------
matris <- matrix(1:6, nrow = 2)
matris
class(matris)

sonuc <- list(
  ortalama_yas = mean(personel$yas, na.rm = TRUE),
  personel_tablosu = personel,
  aciklama = "Egitim ornegi"
)
names(sonuc)
sonuc$ortalama_yas

# 6. Tibble: istege bagli ----------------------------------------------
# Bu ornek tibble paketi kuruluysa calisir; sinifta zorunlu degildir.
# Gerekirse tek seferlik: install.packages("tibble")
# personel_tbl <- tibble::as_tibble(personel)
# personel_tbl
# class(personel_tbl)

# GOREV: Asagidaki sorulari kendiniz cevaplayin.
# A) personel tablosunda aktif sutununun sinifi nedir?
# B) Birinci ve ucuncu satirdaki ad ve birim bilgilerini secin.
# C) personel$yas vektorunde kac eksik deger bulunuyor?
