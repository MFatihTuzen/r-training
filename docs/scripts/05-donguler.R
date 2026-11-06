# ================================================================
# 05 | FOR VE WHILE DONGULERI
# R Programlama Egitimi — konu bazli uygulama
# On kosullar: vektor, indeksleme, if / else (01–04 scriptleri)
# Gereken paket: YOK (base R)
# Calistirma: RStudio'da bloklari sirasiyla Sec + Ctrl+Enter ile.
# ================================================================

# 1. Tekrar edilen kodun anlamini gorelim
print("1. donem kontrol edildi")
print("2. donem kontrol edildi")
print("3. donem kontrol edildi")

# 2. for dongusu: 1:3 degerlerini sirayla kullanir
for (donem in 1:3) {
  print(paste("Kontrol edilen donem:", donem))
}
# TAHMIN: 1:3 yerine 4:6 yazarsan kac satir cikti olur?

# 3. Vektor elemanlarinda gezinme
bolgeler <- c("Kuzey", "Guney", "Dogu")
for (bolge in bolgeler) {
  print(paste("Bolge:", bolge))
}

# 4. Hesaplanan degerleri kaydetme
satis <- c(80, 100, 120, 90)
kdv_dahil <- numeric(length(satis))
for (i in seq_along(satis)) {
  kdv_dahil[i] <- satis[i] * 1.20
}
print(kdv_dahil)
stopifnot(identical(kdv_dahil, c(96, 120, 144, 108)))
# NOT: 1.20 sayisi gercek vergi orani degil, ogretici katsayi.

# 5. if / else dongunun icinde
puanlar <- c(45, 68, 82, 39)
durumlar <- character(length(puanlar))
for (i in seq_along(puanlar)) {
  if (puanlar[i] >= 50) {
    durumlar[i] <- "Gecti"
  } else {
    durumlar[i] <- "Kaldi"
  }
}
print(durumlar)
stopifnot(identical(durumlar, c("Kaldi", "Gecti", "Gecti", "Kaldi")))

# 6. while: her tur sonunda sayac degismeli
sayac <- 1
while (sayac <= 3) {
  print(paste("Adim:", sayac))
  sayac <- sayac + 1
}
stopifnot(sayac == 4)

# 7. while ile hedefe ulasma (yapay ornek)
birikim <- 0
hedef <- 350
ay <- 0
while (birikim < hedef) {
  ay <- ay + 1
  birikim <- birikim + 100
}
print(c(ay = ay, birikim = birikim))
stopifnot(ay == 4, birikim == 400)

# 8. break: donguden tumden cikar
for (sayi in 1:6) {
  if (sayi == 4) break
  print(sayi)
}

# 9. next: o adimi atlar, bir sonrakine gecer
for (sayi in 1:6) {
  if (sayi == 4) next
  print(sayi)
}

# 10. Modern R: Basit vektorel islem daha acik olabilir
sonuc_vektorel <- satis * 1.20
print(sonuc_vektorel)
stopifnot(identical(kdv_dahil, sonuc_vektorel))

# 11. Yapay olcumler icin sinir kontrolu
olcumler <- c(98, 105, 100, 111)
etiket <- character(length(olcumler))
for (i in seq_along(olcumler)) {
  if (olcumler[i] > 100) {
    etiket[i] <- "Ustunde"
  } else {
    etiket[i] <- "Sinirda veya altinda"
  }
}
sonuc_tablosu <- data.frame(olcum = olcumler, durum = etiket)
print(sonuc_tablosu)
stopifnot(nrow(sonuc_tablosu) == 4)

# 12. NA iceren olcumler: once eksik deger kontrolu
olcumler <- c(98, NA, 100, 111)
etiket <- character(length(olcumler))
for (i in seq_along(olcumler)) {
  if (is.na(olcumler[i])) {
    etiket[i] <- "Eksik"
  } else if (olcumler[i] > 100) {
    etiket[i] <- "Ustunde"
  } else {
    etiket[i] <- "Sinirda veya altinda"
  }
}
print(data.frame(olcum = olcumler, durum = etiket))

# EK CALISMA (sinifta zorunlu degil):
# 1) bolgeler vektorune "Bati" ekleyip donguyu calistir.
# 2) puanlar vektorune 50 puanini ekle. Yeni sonucu tahmin et.
# 3) 1:6 dongulerinde 4 yerine 2 yaz; break ile next farkini incele.
# 4) Kisa, vektorel bir yazimla olcumlerin 100'u asip asmadigini hesapla.
