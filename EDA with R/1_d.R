#which E-commerce site prefer for buying electronics product w.r.t. Age
a<-filter(data, Age<=19)
a1 <- a$Which.e.commerce.sites.you.prefer.for.buying.electronics.product.
a1 <- rep(a1,round(100/length(a1)))
b<-filter(data, Age<22 & Age>=20)
b1 <- b$Which.e.commerce.sites.you.prefer.for.buying.electronics.product.
b1 <- rep(b1,round(100/length(b1)))
c<-filter(data, Age<25 & Age>=22)
c1 <- c$Which.e.commerce.sites.you.prefer.for.buying.electronics.product.
c1 <- rep(c1,round(100/length(c1)))
d<-filter(data, Age>=25)
d1 <- d$Which.e.commerce.sites.you.prefer.for.buying.electronics.product.
d1 <- rep(d1,round(100/length(d1)))
par(mfrow=c(2,2))
barplot(table(a1), main="Sites preferences for purchasing electronics products of Age<=19", xlab="Site names", ylab="Percentage of Electronic products purchased", col= c("red","yellow","green","red"))
barplot(table(b1), main="Sites preferences for purchasing electronics products of20<=Age<22", xlab="Site names", ylab="Percentage of Electronic products purchased", col=c("red","yellow","green","brown"))
barplot(table(c1), main="Sites preferences for purchasing electronics products of 22<=Age<25", xlab="Site names", ylab="Percentage of Electronic products purchased", col=c("red","yellow","green","brown"))
barplot(table(d1), main="Sites preferences for purchasing electronics products of Age>=25", xlab="Site names", ylab="Percentage of Electronic products purchased", col=c("red","yellow","green","brown"))
mtext("Main Title:E-commerce site prefer for buying electronics product w.r.t Age",side=3,line=-25.5,outer=TRUE)
