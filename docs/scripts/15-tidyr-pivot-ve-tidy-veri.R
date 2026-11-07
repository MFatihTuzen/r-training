# ===============================================================
# 15 | tidyr: tidy data, pivot_longer(), pivot_wider(), anahtar
# ===============================================================
library(dplyr)
library(tidyr)

# 1 - Kucuk, elle takip edilebilir bir ornek.
genis <- tibble(country = c("A", "B"), `2020` = c(10, 20), `2021` = c(12, 25))
uzun <- genis |>
  pivot_longer(cols = c(`2020`, `2021`),
               names_to = "year", values_to = "value") |>
  mutate(year = as.integer(year))
print(uzun)

# 2 - Geri donus: (country, year) ikilisi tekil olmalidir.
tekrar_genis <- uzun |>
  pivot_wider(id_cols = country, names_from = year, values_from = value)
print(tekrar_genis)

# 3 - WDI panelinden iki gosterge secerek uzun bicime donus.
panel <- readr::read_csv("data/wdi/wdi_panel_2015_2022.csv", show_col_types = FALSE)
secim <- panel |>
  select(country_code, year, unemployment_total_pct, internet_users_pct)
uzun_wdi <- secim |>
  pivot_longer(cols = c(unemployment_total_pct, internet_users_pct),
               names_to = "indicator", values_to = "value")
print(head(uzun_wdi, 8))

# 4 - WDI uzun dosyasinin alanlari: indicator, value, unit.
wdi_long <- readr::read_csv("data/wdi/wdi_long_2015_2022.csv", show_col_types = FALSE)
print(wdi_long |> select(country_code, year, indicator, value, unit) |> head())

# 5 - Orijinal panelin iki sutunuyla kontrol edilebilir karsilastirma.
geri <- uzun_wdi |>
  pivot_wider(id_cols = c(country_code, year),
              names_from = indicator, values_from = value)
stopifnot(nrow(geri) == nrow(secim))

# 6 - Tekrarlanan anahtarlari saptayin: cift kayitlar list-column
# olusturabilir. values_fn ile ozetleme SADECE gerekceliyse yapilir.
duble <- tibble(kod = c("A", "A"), yil = c(2020, 2020), deger = c(10, 20))
print(duble |> count(kod, yil) |> filter(n > 1))
# Bu veri icin hangi gozlem korunmali sorusu cozmeden mean almiyoruz.

# 7 - NA varsayilan olarak korunur; values_drop_na = TRUE veri
# anlamini degistirebilir. Baglam olmadan kullanmayin.
