# R TRAINING — Konu 08 / CSV, Excel ve RDS aktarımı
# Başlangıç uygulaması; genişletilmiş eğitim içeriği değildir.
# Proje kökünde r-training.Rproj dosyasını açın.
# Kurulum gerekiyorsa: install.packages(c("readr", "readxl"))

# CSV (UTF-8) verisi — boş maas hücresi NA olmalı.
personel <- readr::read_csv("data/toy/personel.csv", show_col_types = FALSE)
str(personel)
sum(is.na(personel$maas))

# Excel ile karşılaştırma
personel_xlsx <- readxl::read_excel("data/toy/personel.xlsx")
str(personel_xlsx)

# Farklı ayracın ve ondalık virgülün bulunduğu CSV
ornek <- readr::read_csv2("data/toy/import_semicolon.csv", show_col_types = FALSE)
print(ornek)

# RDS: R nesnesini yaz ve tekrar oku
# Çıktı dosyalarını ayrı klasörde tutalım.
dir.create("outputs", showWarnings = FALSE)
saveRDS(personel, "outputs/personel.rds")
personel_rds <- readRDS("outputs/personel.rds")
stopifnot(nrow(personel) == nrow(personel_rds))

# CSV çıktısı
readr::write_csv(personel, "outputs/personel_kopya.csv")

# EGZERSİZ: Yüklediğiniz verilerin satır/sütun sayısını karşılaştırın.
# EGZERSİZ: Eksik maas değerini veri tablosunda bulabilir misiniz?
