

# Console da eski kod yukarı ok ile getirilir.

# Paketler

install.packages("gplots")
library(gplots)

####  Aritmetik

5+4  # R, en basit haliyle hesap makinesi olarak kullanılabilir

3+4; 6*4; 10-2  # Birden fazla matematiksel işlem aynı satırda gerçekleştirilebilir.

10*2-3  #parantez kullanılmazsa matematiksel işlem önceliği geçerlidir.

10+20+30+

12000*3000  # 3.6e+07 (36.000.000 anlamına gelir. e7: ondalık noktasını yedi basamak sağa taşı)

floor(5.2); floor(5.7)  # floor: alta yuvarla

ceiling(3.2); ceiling(3.8)  # ceilign: üste yuvarla

round(5.6); round(5.3)  # round: 0.5 üzeri ise üste, 0.5 altı ise alta yuvarla

round(1.248,2)  # round komutu ile virgülden sonra kaç basamak olması gerektiğini belirterek yuvarlama yapılabilir.


#### Nesneleri Tanımlama

x<-3
print(x)

3->x
x=3

msg<- "hello world"

# R büyük ve küçük harfe duyarlıdır.

x = c(0,5,7,9,1,2,8)
mean(x)
X



x.ort<-20  # yorum kare ile eklenir. ORTALAMA

x<-5:50   # Çıktıda basılan [.] kaçıncı gözlemden devam edildiğini gösterir.
x


# y vektöründeki gözlemleri sıralamak istiyoruz. sort() komutu default olarak küçükten büyüğe sıralama yapar.

y <- c(4,2,0,9,5,3,10)
sort(y)

sort(y, decreasing=TRUE)  # büyükten küçüğe sıralama


#### Vektörler

# numeric ,character, logical ,integer, complex

x <- c(0.5, 0.6) # numeric
x <- c(TRUE, FALSE) # logical
x <- c(T, F) # logical
x <- c("a", "b", "c") # character
x <- 9:29 # integer
x <- c(1+0i, 2+4i) # complex

x <- c(T, F) # logical     # T ve F, TRUE ve FALSE’a karşılık kullanılan kısaltma yapılardır.

x <- vector("numeric", length = 7)
x

x <- vector("complex", length = 7)
x

# Aynı değişken adı birden fazla tanımlamada kullanılırsa yapılan son tanımlama geçerli olacaktır.

y<- c(2,3,12,56)
class(y)     # Herhangi bir değişkenin hangi yapıda gözlem içerdiği class() komutu ile sorgulanabilir.

y <- c(1.7, "a")  #character
class(y)

y <- c(TRUE, 2) # numeric
class(y)

y <- c("a", TRUE) # Vektör farklı yapıda gözlemler için verimli kullanılamıyor olabilir ancak bu işlemi gerçekleştirebilen list komutu mevcuttur.
class(y)


# Vektor içeriği değiştirilebilir.

x <- 0:6
class(x)

x<-as.character(x)
x
class(x)

x <- c("a", "b", "c") #  Bazı durumlarda R dönüşüm için çözüm üretemez ve NA (non available) çıktı verir.
as.numeric(x)

0/0 # NaN (not a number) imkansız durum
1/0 # Inf (infinity)

#### Matrisler

m <- matrix(nrow = 2, ncol = 3)
m

dim(m)  # matris boyutu

m <- matrix(1:6, nrow = 2, ncol = 3)      # gözlemler sütun şeklinde sıralanır.
m

m <- 1:10  # Vektörler parçalanarak da matris yapısı oluşturabilirler.
m

dim(m) <- c(2, 5)
m


# Matrisler, satır veya sütunların birleştirilmesi yoluyla da oluşturulabilir.

x <- 1:3
y <- 10:12
cbind(x, y)
rbind(x, y)
