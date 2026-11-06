# R TRAINING — Konu 09 / SAS ve SPSS dosyaları
# Başlangıç uygulaması; genişletilmiş eğitim içeriği değildir.
# install.packages("haven") # yalnızca paket kurulu değilse
if (!requireNamespace("haven", quietly = TRUE)) {
  stop("haven paketi gerekli. Kurumun izin verdiği paket kurulum yöntemini kullanın.")
}

sas_yol <- system.file("examples", "iris.sas7bdat", package = "haven")
spss_yol <- system.file("examples", "iris.sav", package = "haven")
stopifnot(nzchar(sas_yol), nzchar(spss_yol))

sas_veri <- haven::read_sas(sas_yol)
spss_veri <- haven::read_sav(spss_yol)

str(sas_veri)
str(spss_veri)

# SPSS etiketli değişken olup olmadığını kontrol edin.
vapply(spss_veri, inherits, logical(1), what = "haven_labelled")

# EGZERSİZ: İki dosyanın satır ve sütun sayısı aynı mı?
# EGZERSİZ: Değişken sınıflarını karşılaştırın.
