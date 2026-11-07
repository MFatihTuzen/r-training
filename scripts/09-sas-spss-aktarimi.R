# =====================================================================
# 09 | SAS / SPSS DOSYALARI — ETİKETLER, TIPLER, EKSIK DEGERLER
# Gerekli paket: haven. Kurulum: install.packages("haven")
# =====================================================================
if (!requireNamespace("haven", quietly = TRUE)) {
  stop("Bu script için önce 'haven' paketini kurmalısınız.")
}

# 1. Paket içindeki örnek veri dosyalarını bul.
sas_path <- system.file("examples", "iris.sas7bdat", package = "haven")
spss_path <- system.file("examples", "iris.sav", package = "haven")
stopifnot(nzchar(sas_path), nzchar(spss_path))

# 2. Aynı çiçek verisini SAS ve SPSS biçiminden oku.
sas <- haven::read_sas(sas_path)
spss <- haven::read_sav(spss_path)
str(sas)
str(spss)

# 3. Etiketli değişkeni incele.
print(attributes(spss$Species))
print(haven::as_factor(spss$Species))

# 4. Etiketi kaldırmanın neyi değiştirdiğini anlamak için
# önce kaynak nesneyi koruyarak kopya üzerinde çalış.
spss_kopya <- spss
spss_etiketsiz <- haven::zap_labels(spss_kopya)
str(spss_etiketsiz)

# 5. SPSS kullanıcı tanımlı eksikler: gerçek dosyada özel tanımlar varsa
# read_sav(..., user_na = TRUE) seçeneğini ve zap_missing() işlevini inceleyin.
# Her dosyada kullanıcı tanımlı eksik değer bulunmak zorunda değildir.

# 6. SAS .sas7bdat yazma fonksiyonu haven içinde bulunmaz.
# SAS transport (.xpt) ve SPSS (.sav) yazılabilir.
dir.create("outputs", showWarnings = FALSE)
haven::write_xpt(sas, "outputs/ornek_sas_transport.xpt", version = 8)
haven::write_sav(spss, "outputs/ornek_spss.sav")
stopifnot(file.exists("outputs/ornek_sas_transport.xpt"),
          file.exists("outputs/ornek_spss.sav"))

# EGZERSİZ: Veri tiplerini csv ile kıyasla. Etiket ne zaman kayboluyor?
