# ===============================================================
# 14 | JOIN mantigi: anahtar, eslesme, satir sayisi ve kontrol
# ===============================================================
library(dplyr)

# 1 - Oncelikle elle sonucu tahmin edilebilen kucuk iki tablo.
a <- tibble(kod = c("A", "B", "C"), sayi = c(10, 20, 30))
b <- tibble(kod = c("B", "C", "D"), grup = c("X", "Y", "Z"))
print(left_join(a, b, by = "kod"))
print(inner_join(a, b, by = "kod"))
print(full_join(a, b, by = "kod"))
print(anti_join(a, b, by = "kod"))
print(semi_join(a, b, by = "kod"))

# 2 - Eslestirme anahtarlarini onceden kontrol et.
meta <- readr::read_csv("data/wdi/country_metadata.csv", show_col_types = FALSE)
wdi <- readr::read_csv("data/wdi/wdi_2019.csv", show_col_types = FALSE)
stopifnot(!anyDuplicated(meta$country_code))
stopifnot(!anyDuplicated(wdi$country_code))
print(wdi |> anti_join(meta, by = "country_code") |> select(country_code))

# 3 - WDI ve metadata: her ulkeye en fazla bir bolge kaydi.
sonuc <- wdi |>
  left_join(meta |> select(country_code, region, income_group),
            by = "country_code", relationship = "many-to-one")
stopifnot(nrow(sonuc) == nrow(wdi))
print(sonuc |> select(country, region, income_group) |> head())

# 4 - Paneldeki tekrarlanan ulke kodlari NORMAL: farkli yillar.
panel <- readr::read_csv("data/wdi/wdi_panel_2015_2022.csv", show_col_types = FALSE)
stopifnot(!anyDuplicated(panel[c("country_code", "year")]))

# 5 - HATALI ANAHTAR: ayni ulke kodu icin birden cok yil.
# Bu ornegi CALISTIRMADAN ONCE beklenen satir sayisini dusunun.
# Yanlis birlesimi bilerek yorum satirinda tuttuk:
# left_join(panel, panel, by = "country_code")

# 6 - Iki yil-seri alt tablosunu dogru ortak anahtarla birlestir.
gdp <- panel |> select(country_code, year, gdp_per_capita_usd)
issiz <- panel |> select(country_code, year, unemployment_total_pct)
birlesik <- left_join(gdp, issiz,
                      by = c("country_code", "year"), relationship = "one-to-one")
stopifnot(nrow(birlesik) == nrow(gdp))

# 7 - Coktan coga problemi: iki tarafta da tekrarli anahtar.
x <- tibble(kod = c("A", "A"), x_deger = 1:2)
y <- tibble(kod = c("A", "A"), y_deger = 3:4)
# Bilerek calistirilmaz; normalde uyari verir ve 4 satir uretir:
# left_join(x, y, by = "kod")

# 8 - satir birlestirme JOIN degildir: bind_rows().
print(bind_rows(a, tibble(kod = "E", sayi = 50)))
