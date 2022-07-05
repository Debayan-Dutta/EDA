#Analysis on subscription w.r.t (a) age
par(mfrow=c(1,1))
a<-filter(data,Do.you.have.any.subscription.on.any.E.Commerce.site.=="Yes")
b<-filter(data,Do.you.have.any.subscription.on.any.E.Commerce.site.=="No")
df1 <- data %>% 
  group_by(Age) %>%
  select(Do.you.have.any.subscription.on.any.E.Commerce.site.)
mat1 <- as.data.frame(as.data.frame(unclass(table(df1$Age, df1$Do.you.have.any.subscription.on.any.E.Commerce.site.))))
percentage <- function(x,y){
  return((y*100)/(x+y))
}
mat1$percentage_of_no <- mapply(percentage, mat1$Yes, mat1$No)
mat1$percentage_of_yes <- c(100-c(mat1$percentage_of_no))
mat1 <- t(mat1)
barplot(mat1[c(3,4),], names.arg = colnames(mat1), beside = T)
legend(x=8 ,y=75 ,legend= c("Percentage of customers having no subscription", "Percentage of customers having subscription"), cex = .8, fill = c("Black","grey"), bty = "n")
mtext("Main Title:Subscription analysis (percentage-wise) of E-commerce site w.r.t Age",side=3,line=-40,outer=TRUE)