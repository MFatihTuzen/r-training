# =====================================================================
# 02 | Veri Tipleri ve Yapilari
# Hedef: tip, vektor, data.frame, liste, temel indeksleme
# =====================================================================

# A | Veri tipi --------------------------------------------------------
yas <- c(24, 32, 45)           # numeric
isim <- c("Ali", "Ayse", "Deniz") # character
calisiyor <- c(TRUE, FALSE, TRUE) # logical

class(yas)
class(isim)
class(calisiyor)

# Bu ifadede ne oluyor? Vektorde elemanlar ortak bir tipe donusebilir.
karisik <- c(10, "20", 30)
class(karisik)

# B | Data frame: farkli tipte sutunlar --------------------------------
personel <- data.frame(
  ad = c("Ali", "Ayse", "Deniz", "Ece"),
  yas = c(24, 32, 45, NA),
  birim = c("A", "B", "A", "B"),
  aktif = c(TRUE, TRUE, FALSE, TRUE)
)

str(personel)
dim(personel)
names(personel)
head(personel)

# C | Satir-sutun secimi ------------------------------------------------
personel$yas             # Bir sutun
personel[1:2, ]         # Ilk iki satir
personel[, c("ad", "birim")] # Iki sutun

# D | Liste: farkli nesneleri bir arada saklama -------------------------
ozet <- list(
  veri = personel,
  olusturma_amaci = "Egitim ornegi",
  kayit_sayisi = nrow(personel)
)

ozet$kayit_sayisi

# E | Matris ile data frame farki ---------------------------------------
sayisal_matris <- matrix(1:6, nrow = 2)
class(sayisal_matris)
class(personel)

# F | Egzersiz ---------------------------------------------------------
# 1. 'personel' tablosundaki eksik yas sayisini bulun.
# 2. Yalnizca ilk 3 kisinin adlarini secin.
# 3. 'aktif' degiskeninin tipini sorgulayin.
# 4. Veri tibble olsaydi ne degisirdi? (Web dersinde tartisin.)
