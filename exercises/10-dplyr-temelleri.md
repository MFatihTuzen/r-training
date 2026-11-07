# 10 — Veriyi Hazırlamaya Giriş ve dplyr Temelleri: Alıştırmalar

**A:** sınıfta, **B:** pekiştirme, **C:** ek çalışma. Çözümlerinizi ayrı bir R scriptinde saklayın.

1. `wdi_2019.csv` dosyasını okuyup satır ve sütun sayısını not edin. (A)

2. Yalnız ülke adı/kodu, nüfus ve işsizlik oranını seçin. (A)

3. Nüfusu 10 milyonun üzerinde olanları büyükten küçüğe sıralayın. (A)

4. `country_code %in% c("TUR", "DEU", "FRA")` filtresiyle üç ülkeyi seçin. (A)

5. `rename()` ve `select()` işlemlerinin farkını açıklayın. (B)

6. `distinct(country_code)` kaç satır üretir? Neden? (B)

7. Eksik işsizlik değerlerinin `filter(unemployment_total_pct > 10)` sonucunu nasıl etkilediğini gözlemleyin. (B)

