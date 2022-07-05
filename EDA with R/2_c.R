##which E-commerce site prefer for buying Garments product w.r.t Subscription
a<-filter(data,Do.you.have.any.subscription.on.any.E.Commerce.site.=="Yes")
b<-filter(data,Do.you.have.any.subscription.on.any.E.Commerce.site.=="No")
par(mfrow=c(1,2))
pie(table(a$Which.e.commerce.sites.you.prefer.for.purchasing.Garments.),main = "Sites preferences for purchasing Garmets products who have subscription")
pie(table(b$Which.e.commerce.sites.you.prefer.for.purchasing.Garments.),main="Sites preferences for purchasing Gamrnets products who have not subscription")
mtext("Main Title:E-commerce site prefer for buying Garments product w.r.t. Subscription",side=3,line=-31,outer=TRUE)
