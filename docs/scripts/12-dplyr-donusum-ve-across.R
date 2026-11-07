# ===============================================================
# 12 | dplyr: mutate, if_else, case_when, across ve eksik degerler
# ===============================================================
library(dplyr)
wdi <- readr::read_csv("data/wdi/wdi_2019.csv", show_col_types = FALSE)

# 1 - mutate(): yeni sutun olusturur.
veri <- wdi |>
  select(country, country_code, population_total,
         gdp_per_capita_usd, unemployment_total_pct,
         internet_users_pct) |>
  mutate(population_million = population_total / 1e6)
print(veri |> select(country, population_million) |> head())

# 2 - if_else(): her gozlem icin iki secenekten birini secer.
veri <- veri |>
  mutate(buyuk_nufus = if_else(population_total >= 50e6, "Evet", "Hayir",
                              missing = "Bilinmiyor"))

# 3 - case_when(): cok kategorili siniflama (siraya dikkat!).
# Bu esikler sadece EGITIM AMACLIDIR; resmi siniflama degildir.
veri <- veri |>
  mutate(issizlik_sinifi = case_when(
    is.na(unemployment_total_pct) ~ "Veri yok",
    unemployment_total_pct < 5 ~ "Dusuk (orneksel)",
    unemployment_total_pct < 10 ~ "Orta (orneksel)",
    .default = "Yuksek (orneksel)"
  ))
print(veri |> count(issizlik_sinifi))

# 4 - Birden fazla sutunda ayni hesap: across().
# na.rm = TRUE icin ~ isaretli lambda kullaniliyor.
ortalama <- veri |>
  summarise(across(c(gdp_per_capita_usd, unemployment_total_pct),
                   ~ mean(.x, na.rm = TRUE),
                   .names = "ort_{.col}"))
print(ortalama)

# 5 - if_any() tek bir kosulu birden cok sutunda arar.
eksigi_olan <- veri |>
  filter(if_any(c(gdp_per_capita_usd, unemployment_total_pct), is.na))
print(nrow(eksigi_olan))

# 6 - coalesce() eksiklerin yerine ne konulacagini bilincli secmektir.
# Orijinal degisken degistirilmiyor; bir kontrol gostergesi uretiliyor.
kontrol <- veri |>
  mutate(issizlik_var = !is.na(unemployment_total_pct),
         kontrol_durumu = coalesce(issizlik_sinifi, "Bilinmiyor"))
print(kontrol |> count(issizlik_var))

# 7 - rename_with() sutun isimlerini topluca duzenler.
print(veri |> rename_with(toupper, .cols = starts_with("population")) |> names())

# Dikkat: eksik degerleri 0 ile doldurmak genellikle istatistiksel
# olarak yanlistir; konuya ozel gerekce ve veri sozlugu gerekir.
