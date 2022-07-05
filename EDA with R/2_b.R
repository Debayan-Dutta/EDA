#which E-commerce site prefer for buying Garments product w.r.t Gender
par(mfrow=c(1,2))
a=filter(data, Gender=="Male")
b=filter(data, Gender=="Female")
pie(table(a$Which.e.commerce.sites.you.prefer.for.purchasing.Garments.),main="Sites preferences for purchasing Garments products of Male")
pie(table(b$Which.e.commerce.sites.you.prefer.for.purchasing.Garments.),main="Sites preferences for purchasing Garments products of Female")
mtext("Main Title:E-commerce site prefer for buying Garments product w.r.t. Gender",side=3,line=-31,outer=TRUE)
