# ===============================================================
# 13 | dplyr: group_by(), summarise(), count(), across(), .groups
# ===============================================================
library(dplyr)
panel <- readr::read_csv("data/wdi/wdi_panel_2015_2022.csv", show_col_types = FALSE)
meta <- readr::read_csv("data/wdi/country_metadata.csv", show_col_types = FALSE)
stopifnot(!anyDuplicated(meta$country_code))

# Bolge bilgisi ayri metadata tablosundadir.
veri <- panel |>
  left_join(meta |> select(country_code, region, income_group),
            by = "country_code", relationship = "many-to-one")

# 1 - Satirlari saymakla ozet istatistik hesaplamak farklidir.
print(veri |> count(year))

# 2 - Yil bazinda kayip degerlere dikkat ederek ortalama hesaplama.
# Buradaki ortalamalar ULKELERIN ESIT AGIRLIKLI ORTALAMASIDIR;
# dunya issizlik orani veya dunya gelir ortalamasi degildir.
yillik <- veri |>
  group_by(year) |>
  summarise(n_ulke = n(),
            n_issizlik = sum(!is.na(unemployment_total_pct)),
            issizlik_ulke_ort = if (all(is.na(unemployment_total_pct))) NA_real_
                               else mean(unemployment_total_pct, na.rm = TRUE),
            .groups = "drop")
print(yillik)

# 3 - Bolge ve yil: coklu gruplama.
bolgeler <- veri |>
  filter(!is.na(region), year == 2019) |>
  group_by(region) |>
  summarise(n = n(),
            n_gdp = sum(!is.na(gdp_per_capita_usd)),
            medyan_gdp = if (all(is.na(gdp_per_capita_usd))) NA_real_
                         else median(gdp_per_capita_usd, na.rm = TRUE),
            .groups = "drop") |>
  arrange(desc(medyan_gdp))
print(bolgeler)

# 4 - across ile birden fazla sutunun ortalamasi ve eksik sayisi.
print(veri |>
  filter(year == 2019) |>
  group_by(income_group) |>
  summarise(across(c(unemployment_total_pct, internet_users_pct),
                   list(ortalama = ~ if (all(is.na(.x))) NA_real_ else mean(.x, na.rm = TRUE),
                        eksik = ~ sum(is.na(.x))),
                   .names = "{.col}_{.fn}"),
            .groups = "drop"))

# UYARI: mean(gdp_per_capita_usd) bir "global kisi basi GSYH"
# degildir. Ulke agirliklari ve ekonomik yorum ayridir.
