# =====================================================================
# 01 | R Ortami ve Ilk Komutlar
# Hedef: Console, Script, nesne, yardim, temel kontrol
# Paket gerektirmez. RStudio Project icinde calistirilmasi onerilir.
# =====================================================================

# A | R bir hesap makinesinden fazlasidir -------------------------------
2 + 3 * 4             # Islem onceligi: beklenen cevap 14
(2 + 3) * 4           # Parantez sonucu degistirir

# B | Nesne olusturma ---------------------------------------------------
fiyat <- c(120, 150, 180, 210)
adet <- c(2, 1, 3, 2)
ciro <- fiyat * adet   # Vektorel hesap: her eleman kendi esleseniyle carpiliyor

ciro
sum(ciro)
mean(ciro)
length(ciro)

# Kontrol: her vektorun uzunlugu ayni mi?
stopifnot(length(fiyat) == length(adet))

# C | Eksik veri: NA ile tanisalim -------------------------------------
notlar <- c(75, 80, NA, 95)
mean(notlar)                 # NA verir; neden?
mean(notlar, na.rm = TRUE)   # Eksikleri hesaplamadan cikar
sum(is.na(notlar))          # Kac deger eksik?

# D | R'nin yardim sistemi ---------------------------------------------
# ?mean       # RStudio Help sekmesinde acmak icin yorumu kaldir
args(mean)    # Fonksiyonun argumanlarini goster

# E | Sik hata ornegi ---------------------------------------------------
# toplam = toplam + 1
# Yukaridaki satir nesne onceden olusturulmadiysa hata verir.
# Hata mesajini okuyun: bulunamayan nesne hangisi?

# F | Egzersiz ---------------------------------------------------------
# 1. 'gider' isimli, dort sayidan olusan bir vektor olusturun.
# 2. Giderin toplamini ve ortalamasini hesaplayin.
# 3. Bir degeri NA yaparak na.rm davranisini karsilastirin.
# 4. Kodunuzu kaydedip R oturumunu yeniden baslatarak tekrar calistirin.
