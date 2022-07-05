##########################customer service
t2<-table(data$Gender,data$On.a.scale.of.0.5.how.much.will.you.rate.the.customer.service.Delivery.process...after.sale.service..return.policy.)
library(webr)
#install.packages('webr')
library(webr)
d6<-data.frame(Gender=rep('Male',6),Rating=c(0,1,2,3,4,5),n=c(1,1,1,11,49,15))
d7<-data.frame(Gender=rep('Femle',6),Rating=c(0,1,2,3,4,5),n=c(0,0,1,9,19,5))
d8<-rbind(d6,d7)
d8
PieDonut(d8,aes(Gender,Rating,count=n),title = "Consumer's rating on customer service")
