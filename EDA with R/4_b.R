#Analysis on subscription w.r.t (b) qualification

df1 <- data %>% 
  group_by(Highest.Educational.Qualification) %>%
  select(Do.you.have.any.subscription.on.any.E.Commerce.site.)
mat1 <- as.data.frame(as.data.frame(unclass(table(df1$Highest.Educational.Qualification, df1$Do.you.have.any.subscription.on.any.E.Commerce.site.))))
percentage <- function(x,y){
  return((y*100)/(x+y))
}
mat1$percentage_of_no <- mapply(percentage, mat1$Yes, mat1$No)
mat1$percentage_of_yes <- c(100-c(mat1$percentage_of_no))
mat1 <- t(mat1)
barplot(mat1[c(3,4),], names.arg = factor(colnames(mat1),levels = c("Secondary", "Higher Secondary", "Graduate", "Post Graduate and above")), beside = T)
legend(x=5.3 ,y= 69 ,legend= c("Percentage of customers having no subscription", "Percentage of customers having subscription"), cex = 0.8, fill = c("Black","grey"), bty = "n")
mtext("Main Title: Subscription analysis (percentage-wise) of E-commerce site w.r.t Highest Qualification Levels",side=3,line=-40,outer=TRUE)
