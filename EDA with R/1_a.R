# which E-commerce site prefer for buying electronics product w.r.t qualification
a<-filter(data, Highest.Educational.Qualification=="Secondary")
a1 <- a$Which.e.commerce.sites.you.prefer.for.buying.electronics.product.
a1 <- rep(a1,round(100/length(a1)))
b<-filter(data,Highest.Educational.Qualification=="Higher Secondary")
b1 <- b$Which.e.commerce.sites.you.prefer.for.buying.electronics.product.
b1 <- rep(b1,round(100/length(b1)))
c<-filter(data, Highest.Educational.Qualification=="Graduate")
c1 <- c$Which.e.commerce.sites.you.prefer.for.buying.electronics.product.
c1 <- rep(c1,round(100/length(c1)))
d<-filter(data, Highest.Educational.Qualification=="Post Graduate and above")
d1 <- d$Which.e.commerce.sites.you.prefer.for.buying.electronics.product.
d1 <- rep(d1,round(100/length(d1)))
par(mfrow=c(2,2))
barplot(table(a1), main="Sites preferences for purchasing electronics products of secondary students", xlab="Site names", ylab="Percentage of Electronic products purchased", col= c("red","yellow"))
barplot(table(b1), main="Sites preferences for purchasing electronics products of Higher secondary students", xlab="Site names", ylab="Percentage of Electronic products purchased", col=c("red","yellow","green","brown"))
barplot(table(c1), main="Sites preferences for purchasing electronics products of  Graduated students", xlab="Site names", ylab="Percentage of Electronic products purchased", col=c("red","yellow","green","brown"))
barplot(table(d1), main="Sites preferences for purchasing electronics products of Post Graduated students", xlab="Site names", ylab="Percentage of Electronic products purchased", col=c("red","yellow","green","brown"))
mtext("Main Title:E-commerce site prefer for buying electronics product w.r.t qualification",side=3,line=-25.5,outer=TRUE)
