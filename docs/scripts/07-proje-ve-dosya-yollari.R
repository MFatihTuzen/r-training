# ===============================================================
# 07 | PROJE MANTIĞI, MUTLAK / GÖRELİ DOSYA YOLLARI, HATA AYIKLAMA
# Ön koşul: r-training.Rproj açık, proje kökü çalışma dizini.
# ===============================================================

# 1. Mevcut çalışma klasörünü öğrenelim.
getwd()

# 2. Dosyanın varlığını kontrol edelim.
yol <- file.path("data", "toy", "personel.csv")
print(yol)
stopifnot(file.exists(yol))

# 3. Klasörde neler var?
print(list.files("data/toy"))
print(basename(yol))
print(dirname(yol))
print(normalizePath(yol, winslash = "/", mustWork = TRUE))

# 4. Yanlış dosya adının davranışı.
yanlis_yol <- "data/toy/personel_olmayan.csv"
print(file.exists(yanlis_yol))  # FALSE; hatayı okumadan önce yakaladık

# 5. Mutlak yol bilgisayara özeldir, paylaşılabilir kodda kullanmayın:
# "C:/Users/KISI/Documents/r-training/data/toy/personel.csv"
# Windows'ta ters eğik çizgi yerine / veya file.path() önerilir.

# 6. Tekrarlanabilir okuma (Base R).
personel <- utils::read.csv(yol, stringsAsFactors = FALSE)
print(dim(personel))
print(names(personel))
print(utils::head(personel, 3))

# KONTROL: Dosyadaki satır sayısı değişebilir; belirli bir satır
# sayısını varsaymadan önce veri kaynağını ve sürümünü doğrulayın.

# EGZERSİZ 1: Yanlış uzantı kullandığında file.exists() ne döner?
# EGZERSİZ 2: data/wdi/wdi_2019.csv dosyasına göreli yol kur.
# EGZERSİZ 3: setwd() kullanmadan aynı scripti başka bilgisayarda çalıştır.
