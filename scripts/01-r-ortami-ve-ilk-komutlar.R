# ====================================================================
# R PROGRAMLAMA EGITIMI | 01 - R ortami ve ilk komutlar
# On kosul: RStudio'da Console ve Script kavramlarini tanimak
# Amac: Hesaplama -> atama -> fonksiyon kullanimi -> vektor
# Bu dosyayi ustten alta, SATIR SATIR calistirin (Ctrl+Enter).
# ====================================================================

# 1) Ilk hesaplamalar: # isareti yorumdur, R tarafindan calistirilmaz.
2 + 3
10 - 4
6 * 5
12 / 3
2 ^ 3

# ONCE TAHMIN: Iki komutun sonuclari ayni mi?
2 + 3 * 4
(2 + 3) * 4

# 2) Atama: <- sagdaki degeri soldaki adla saklar.
fiyat <- 120
adet <- 3
tutar <- fiyat * adet
tutar  # 360 beklenir

# DENEME: adet'i degistirdikten sonra 'tutar' otomatik degisir mi?
adet <- 4
tutar                    # Hala onceki hesaplamanin sonucu
# Yeniden hesaplayalim.
tutar <- fiyat * adet
tutar                    # 480 beklenir

# 3) Hazir fonksiyon kullanimi; parantezdeki bilgiler argumandir.
sqrt(16)
round(3.14159, digits = 2)

# 4) c() birden fazla degeri birlestirerek vektor olusturur.
satis <- c(10, 15, 20)
satis
length(satis)  # Kac eleman var?
sum(satis)     # Toplam
mean(satis)    # Ortalama

# ALISTIRMA: 8, 12, 16, 20 degerlerini vektor yapip ortalamasini bulun.
# Kodu buraya yazin:

# KONTROL: Sonuc 14 olmali. Kodun neden dogru oldugunu aciklayin.
