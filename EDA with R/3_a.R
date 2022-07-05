data$Which.e.commerce.sites.you.prefer.for.buying.grocery.items. <- factor(data$Which.e.commerce.sites.you.prefer.for.buying.grocery.items., levels = c("Big Basket", "Amazon", "Grofers", "Flipkart","Swiggy Grocery", "Prefer not to buy" ))
data$Which.e.commerce.sites.you.prefer.for.buying.grocery.items.[is.na(as.vector(data$Which.e.commerce.sites.you.prefer.for.buying.grocery.items.))] <- c("Prefer not to buy")

#which E-commerce site prefer for buying Grocery w.r.t. Age
a<-filter(data, Age<=19)
a1 <- a$Which.e.commerce.sites.you.prefer.for.buying.grocery.items.
a1 <- rep(a1,round(100/length(a1)))
b<-filter(data, Age<22 & Age>=20)
b1 <- b$Which.e.commerce.sites.you.prefer.for.buying.grocery.items.
b1 <- rep(b1,round(100/length(b1)))
c<-filter(data, Age<25 & Age>=22)
c1 <- c$Which.e.commerce.sites.you.prefer.for.buying.grocery.items.
c1 <- rep(c1,round(100/length(c1)))
d<-filter(data, Age>=25)
d1 <- d$Which.e.commerce.sites.you.prefer.for.buying.grocery.items.
d1 <- rep(d1,round(100/length(d1)))

par(mfrow=c(2,2))
barplot(table(a1), main="Sites preferences for purchasing Grocery products of Age<=19", xlab="Site names", ylab="Percentage of Grocery products purchased", col= c("red","blue","green","yellow", "orange", "pink"))
barplot(table(b1), main="Sites preferences for purchasing Grocery products of20<=Age<22", xlab="Site names", ylab="Percentage of Grocery products purchased", col=c("red","blue","green","yellow", "orange", "pink"))
barplot(table(c1), main="Sites preferences for purchasing Grocery products of 22<=Age<25", xlab="Site names", ylab="Percentage of Grocery products purchased", col=c("red","blue","green","yellow", "orange", "pink"))
barplot(table(d1), main="Sites preferences for purchasing Grocery products of Age>=25", xlab="Site names", ylab="Percentage of Grocery products purchased", col=c("red","blue","green","yellow", "orange", "pink"))
mtext("Main Title:E-commerce site prefer for buying Grocery product w.r.t Age",side=3,line=-25.5,outer=TRUE)
