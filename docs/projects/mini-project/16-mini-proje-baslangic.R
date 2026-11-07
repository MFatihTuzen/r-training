# =====================================================================
# R TRAINING | MINI PROJE | KATILIMCI BASLANGIC DOSYASI
# Konu: WDI ulke verilerinin 2019 icin hazirlanmasi
# Calisma dizini: r-training proje koku (r-training.Rproj ile acin)
# Yontem: A - zorunlu; B/C - ek uygulamalar
# NOT: Bu dosya bilerek eksik birakilmistir; TODO satirlarini tamamlayin.
# =====================================================================

library(dplyr)
library(readr)

# A1) Dosyalari kontrol et ve oku
stopifnot(file.exists("data/wdi/wdi_panel_2015_2022.csv"))
stopifnot(file.exists("data/wdi/country_metadata.csv"))

panel <- read_csv("data/wdi/wdi_panel_2015_2022.csv", show_col_types = FALSE)
meta  <- read_csv("data/wdi/country_metadata.csv", show_col_types = FALSE)

# Ilk kontrol: Yil dagilimi, satir sayisi ve sutunlar
print(nrow(panel))
print(count(panel, year))
print(names(meta))

# A2) Anahtar tekilligi: beklenmedik tekrar var mi?
# TODO: panelde country_code + year ikilisi tekil mi?
# TODO: meta'da country_code tekil mi?

# A3) 2019 ulke tablosu
# TODO: filter(year == 2019) kullanarak sec
# TODO: yalnizca country, country_code, year, gdp_per_capita_usd,
#       unemployment_total_pct, internet_users_pct sutunlarini tut
# TODO: mutate + case_when ile gdp_sinifi olustur
#       eksik ya da 0/alti deger: NA_character_
#       >= 20000: "20 bin USD ve uzeri"
#       diger pozitif degerler: "20 bin USD alti"

# A4) JOIN
# TODO: meta'dan country_code, region, income_group sec
# TODO: anti_join ile eslesmeyen kodlari bul
# TODO: left_join(..., by = "country_code", relationship = "many-to-one")
# TODO: birlestirme sonrasi satir sayisini kontrol et

# A5) Bolge ozetleri
# TODO: group_by(region) + summarise()
#       ulke_sayisi = n()
#       issizlik_verisi_olan = sum(!is.na(unemployment_total_pct))
#       issizlik_ort = veri varsa mean(..., na.rm=TRUE), aksi halde NA_real_
#       .groups = "drop"

# A6) Iki dosya yaz ve geri oku
# TODO: dir.create("outputs", showWarnings = FALSE)
# TODO: write_csv ile ulkeler ve bolgeler tablolarini disari aktar
# TODO: ciktinizi tekrar okuyarak satir sayisini test et

# A7) Yontem notunuzu kodun altina yorum olarak yazin.
