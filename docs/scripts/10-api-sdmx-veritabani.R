# =====================================================================
# 10 | WEB, API, SDMX, VERİ TABANI — GÜVENLİ TANITIM
# Internet/kimlik doğrulama gerektiren kodlar varsayılan olarak çalışmaz.
# =====================================================================

# 1. URL'yi oluşturmak, indirmek anlamına gelmez.
url_ornek <- "https://example.org/egitim.csv"  # temsili adres; veri kaynağı değil
print(url_ornek)

# 2. JSON örneğini internetsiz çözümlemek
json_metin <- '{"ulke":"TR","yil":2020,"deger":12.4}'
if (requireNamespace("jsonlite", quietly = TRUE)) {
  print(jsonlite::fromJSON(json_metin))
} else {
  message("JSON örneği için jsonlite paketini yükleyebilirsiniz.")
}

# 3. SDMX; veri ve metadata değişim standardı.
# rsdmx::readSDMX() gerçek ve doğrulanmış SDMX servisinde kullanılabilir.
# Kurumsal uç nokta şeması, API sürümü, akış kimlikleri ve lisans kontrol edilmeli.

# 4. Offline SQLite: dış sunucu veya parola gerekmez.
if (requireNamespace("DBI", quietly = TRUE) &&
    requireNamespace("RSQLite", quietly = TRUE)) {
  con <- DBI::dbConnect(RSQLite::SQLite(), ":memory:")
  DBI::dbWriteTable(con, "veri", data.frame(id = 1:3, tutar = c(10, 20, 30)))
  sonuc <- DBI::dbGetQuery(con, "SELECT id, tutar FROM veri WHERE tutar >= 20")
  stopifnot(nrow(sonuc) == 2L)
  print(sonuc)
  DBI::dbDisconnect(con)
} else {
  message("SQLite örneği için DBI + RSQLite gereklidir; bu bölüm atlandı.")
}

# Gerçek DB bağlantısı şablonu:
# con <- DBI::dbConnect(odbc::odbc(), dsn = Sys.getenv("DB_DSN"),
#                      uid = Sys.getenv("DB_USER"), pwd = Sys.getenv("DB_PASSWORD"))
# sonuc <- DBI::dbGetQuery(con, "SELECT * FROM tablo")
# DBI::dbDisconnect(con)
# Güvenlik: kimlik bilgilerini .R dosyasına asla yazmayın.
