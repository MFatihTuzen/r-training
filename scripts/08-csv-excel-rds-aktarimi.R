# =====================================================================
# 08 | CSV / CSV2 / EXCEL / RDS / DISA AKTARMA — UYGULAMA SCRIPTİ
# Proje kökünde r-training.Rproj açık olmalı.
# Gereken paketler: readr, readxl, openxlsx2 (isteğe bağlı)
# Kurulum bir defalık: install.packages(c("readr", "readxl", "openxlsx2"))
# =====================================================================

# PAKETLERİ GÜVENLİ KONTROL ET: Ders esnasında kurulum başlatmayalım.
gerekli <- c("readr", "readxl")
eksik <- gerekli[!vapply(gerekli, requireNamespace, logical(1), quietly = TRUE)]
if (length(eksik)) stop("Önce şu paketleri kurun: ", paste(eksik, collapse = ", "))

# 1. Dosya yolu
csv_yolu <- file.path("data", "toy", "personel.csv")
stopifnot(file.exists(csv_yolu))

# 2. Base R ve readr: aynı dosya, farklı varsayılan çıktı tipleri.
personel_base <- utils::read.csv(csv_yolu, stringsAsFactors = FALSE)
personel <- readr::read_csv(csv_yolu, show_col_types = FALSE)
str(personel_base)
str(personel)
print(readr::spec(personel))
print(readr::problems(personel))

# 3. CSV2: ; ayraç + , ondalık işaret
csv2_yolu <- "data/toy/import_semicolon.csv"
stopifnot(file.exists(csv2_yolu))
tr_veri <- readr::read_csv2(csv2_yolu, show_col_types = FALSE)
print(tr_veri)
print(readr::problems(tr_veri))

# 4. Kontrollü tip atama örneği: seçili karakter değişkeni
# Sütun adlarını incele, kaynağa uymayan tip zorlaması yapma.
print(names(personel))
# readr::read_csv(..., col_types = readr::cols(id = readr::col_character()))
# Yukarıdaki örnek ancak 'id' adında bir sütun varsa kullanılmalı.

# 5. Excel: Birden fazla sayfa, rapor üst satırları, dar aralık
xlsx <- "data/toy/coklu_sayfa_rapor.xlsx"
stopifnot(file.exists(xlsx))
print(readxl::excel_sheets(xlsx))
excel_kod <- readxl::read_excel(xlsx, sheet = "Veri", col_types = "text")
rapor <- readxl::read_excel(xlsx, sheet = "Baslikli_Rapor", skip = 3)
rapor_aralik <- readxl::read_excel(xlsx, range = "Baslikli_Rapor!A4:D8")
rapor_iki <- readxl::read_excel(xlsx, sheet = "Baslikli_Rapor", skip = 3, n_max = 2)
print(excel_kod)
print(rapor)
stopifnot(nrow(rapor) == 4L, nrow(rapor_aralik) == 4L, nrow(rapor_iki) == 2L)

# 6. read_excel(sheet, skip, n_max, col_types, range) farklarını
# deneyerek kontrol et. 'range' varsa 'skip' yok sayılır.

# 7. Dosya çıktıları: outputs/ Git takibine alınmaz.
dir.create("outputs", showWarnings = FALSE)
readr::write_csv(personel, "outputs/personel.csv")
readr::write_csv2(personel, "outputs/personel_csv2.csv")
saveRDS(personel, "outputs/personel.rds")
personel_rds <- readRDS("outputs/personel.rds")
stopifnot(identical(personel, personel_rds))

# 8. openxlsx2 ile Excel; isteğe bağlı paket
if (requireNamespace("openxlsx2", quietly = TRUE)) {
  openxlsx2::write_xlsx(
    list(Personel = as.data.frame(personel), IlkUc = as.data.frame(head(personel, 3))),
    file = "outputs/personel_coklu_sayfa.xlsx"
  )
  stopifnot(file.exists("outputs/personel_coklu_sayfa.xlsx"))
} else {
  message("openxlsx2 kurulu değil; çok sayfalı Excel çıktı örneği atlandı.")
}

# 9. Çıktıları kontrol edelim
print(list.files("outputs", pattern = "personel"))

# EGZERSİZ: CSV2 yanlış fonksiyonla okunursa sonucu incele.
# EGZERSİZ: Birden fazla sheet'i ayrı nesne olarak oku.
# EGZERSİZ: Ek bir sayfaya özet tabloyu Excel olarak kaydet.
