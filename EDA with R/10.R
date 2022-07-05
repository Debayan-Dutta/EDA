#10affordable range
library(dplyr)
library(ggplot2)
t<-table(data$Gender,data$Do.you.generally.find.various.alternatives.for.the.same.product.in.your.affordable.range.)
d1<-as.data.frame(unclass(t))
d1
d2<-data.frame(Gender=rep('Male',2),Do.you.generally.find.various.alternatives.for.the.same.product.in.your.affordable.range.=c('Yes','No'),value=c(68,10))
d2
View(d2)
d2$Percentage<-(d2$value/sum(d2$value)*100)
d3<-data.frame(Gender=rep('Female',2),Do.you.generally.find.various.alternatives.for.the.same.product.in.your.affordable.range.=c('Yes','No'),value=c(31,3))
d3$Percentage<-(d3$value/sum(d3$value)*100)
View(d3)
d4<-rbind(d2,d3)

View(d4)
ggplot(d4,aes(x=Do.you.generally.find.various.alternatives.for.the.same.product.in.your.affordable.range.,y=Percentage,fill=Gender))+geom_bar(stat="identity", position=position_dodge())+labs(x='Peoples views on alternative products on their affordable buying range ')
