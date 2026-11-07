# ===============================================================
# 11 | dplyr: veri hazırlama, secme, filtreleme ve siralama
# RStudio'da r-training.Rproj dosyasini acin.
# Kaynak: data/wdi/wdi_2019.csv (WDI, 2019 referans kesiti)
# ===============================================================
# Bu ders icin dplyr ve readr kurulu olmalidir.
# Kurulum sadece bir kez: install.packages(c("dplyr", "readr"))
library(dplyr)

# 1 - Ne kadar veri var? Import sonrasi yapisal kontrol.
dosya <- "data/wdi/wdi_2019.csv"
stopifnot(file.exists(dosya))
wdi <- readr::read_csv(dosya, show_col_types = FALSE)
print(dim(wdi))
print(names(wdi))
dplyr::glimpse(wdi)

# 2 - Sutun ve satir kavrami: select() sutun, filter() satir secer.
kucuk <- wdi |>
  select(country, country_code, year, population_total,
         unemployment_total_pct, gdp_per_capita_usd)
print(head(kucuk))

# 3 - select() icin olumsuz secim ve starts_with().
print(wdi |> select(country, year, starts_with("gdp_")) |> head())
print(kucuk |> select(-gdp_per_capita_usd) |> head())

# 4 - filter(): Kosul tek bir mantiksal vektor gibi calisir.
# Eksik issizlik oranlarini simdilik disari birakiyoruz.
secim <- kucuk |>
  filter(!is.na(unemployment_total_pct), unemployment_total_pct > 10)
print(head(secim, 10))

# 5 - Birden fazla kosul: & (ve), | (veya), %in% (listede).
secim2 <- kucuk |>
  filter(country_code %in% c("TUR", "DEU", "FRA"),
         !is.na(gdp_per_capita_usd))
print(secim2)

# 6 - arrange(): kucukten buyuge, desc() ile tersine.
print(secim |> arrange(desc(unemployment_total_pct)) |> head(10))

# 7 - rename(): YENI_AD = ESKI_AD
# Bu sadece sutunun adini degistirir; icerik degismez.
adi_duzenli <- secim2 |> rename(ulke = country, issizlik = unemployment_total_pct)
print(adi_duzenli)

# 8 - distinct(): yinelenen kayitlari tespit / secme.
print(wdi |> distinct(country_code) |> count())

# KONTROL: Kaynagin 2019 kesiti oldugunu dogrulayalim.
stopifnot(all(wdi$year == 2019), !anyDuplicated(wdi$country_code))
# Gorev: Nufusu 10 milyonu asan ulkeleri secip nufusa gore siralayin.
