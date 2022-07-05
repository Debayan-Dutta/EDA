########customer service w.r.t subscription
t3<-table(data$Do.you.have.any.subscription.on.any.E.Commerce.site.,data$On.a.scale.of.0.5.how.much.will.you.prefer.others.for.online.shopping.)
t3
library(webr)
d9<-data.frame(Subscription_status=rep('No',6),Rating=c(0,1,2,3,4,5),n=c(1,1,1,21,27,11))
d10<-data.frame(Subscription_status=rep('Yes',6),Rating=c(0,1,2,3,4,5),n=c(0,0,2,10,28,10))
d11<-rbind(d9,d10)
d11
PieDonut(d11,aes(Subscription_status,Rating,count=n),title = "People's view on Customer servive w.r.t having subscription")

