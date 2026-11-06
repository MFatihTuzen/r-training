# ================================================================
# 04 | KOSULLU IFADELER — if, else if, else
# Temel R ile calisir. Kodlari SIRAYLA ve blok blok yurutun.
# ================================================================

# 1. Mantiksal karsilastirmalar
siparis_tutari <- 650
siparis_tutari > 500
siparis_tutari >= 500
siparis_tutari == 500
siparis_tutari != 500

# 2. if: sadece kosul dogruysa calisir
if (siparis_tutari > 500) {
  print("Kargo ucretsiz")
}
# SIRA SENDE: siparis_tutari <- 450 yap ve blogu tekrar dene.

# 3. if / else: iki secenek
siparis_tutari <- 450
if (siparis_tutari > 500) {
  kargo <- 0
} else {
  kargo <- 50
}
kargo
# SINIR: 500 icin karar nasil degisiyor? >= ile dene.

# 4. else if: birden fazla secenek
puan <- 78
if (puan >= 85) {
  durum <- "Pekiyi"
} else if (puan >= 70) {
  durum <- "Iyi"
} else if (puan >= 50) {
  durum <- "Gecer"
} else {
  durum <- "Basarisiz"
}
durum
# DENEME: puan <- 50; 70; 85; 49  (her seferinde blogu calistir)

# 5. Bilesik kosullar
yas <- 25
sinava_girdi <- TRUE
(yas >= 18) & sinava_girdi
(yas < 18) | sinava_girdi
!sinava_girdi

# 6. Eksik bilgi: NA kontrolu yap
puan <- NA
if (is.na(puan)) {
  durum <- "Bilgi eksik"
} else if (puan >= 50) {
  durum <- "Gecti"
} else {
  durum <- "Kaldi"
}
durum

# 7. Vektorel karar: ifelse() / if() farki
puanlar <- c(45, 60, 82, NA)
sonuc <- ifelse(is.na(puanlar), "Eksik",
                ifelse(puanlar >= 50, "Gecti", "Kaldi"))
sonuc

# 8. Yapay is senaryosu: odeme tutari
ucret <- 900
uyelik <- TRUE
if (ucret >= 1000 & uyelik) {
  indirim_orani <- 0.15
} else if (ucret >= 500) {
  indirim_orani <- 0.05
} else {
  indirim_orani <- 0
}
odenecek <- ucret * (1 - indirim_orani)
odenecek
# EGZERSIZ: ucret=1000 ve uyelik=FALSE icin sonucu tahmin et.
# EGZERSIZ: baska sinir degerleri dene.
