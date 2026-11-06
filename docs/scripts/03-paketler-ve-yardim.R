# ================================================================
# 03 | R PAKETLERI VE YARDIM
# Amac: kurulum, yukleme, paket::fonksiyon ve yardim farklarini gor.
# Bu dosya mevcut paketleri degistirmez; kurulum komutlari yorumdur.
# ================================================================

# 1) Temel R fonksiyonu: herhangi bir ek kurulum gerekmez.
sayilar <- c(4, 8, 12)
mean(sayilar)

# 2) Bir paket kurulu mu?
"dplyr" %in% rownames(installed.packages())
"utils" %in% rownames(installed.packages())

# 3) Paket kurmak (bir kez; internet ve izin gerekir):
# install.packages("dplyr")

# 4) Kurulu paketi oturuma yuklemek:
# library(dplyr)

# 5) Paketi yuklemeden fonksiyon cagirmak:
utils::head(iris, 3)

# 6) Fonksiyon yardimini ve paket surumunu incelemek:
# ?mean             # Yardim ekranini acmak icin bu satiri kullanabilirsin.
help("head", package = "utils")
packageVersion("utils")

# 7) Eger kurs sirasinda ihtiyac olursa oturum bilgisi:
sessionInfo()

# EGZERSIZ: utils::head(iris, 2) ile ilk iki gozlemi goster.
# EGZERSIZ: utils paketinin surumunu sorgula.
# NOT: dplyr ve diger eklentileri henuz kullanmak zorunda degiliz.
