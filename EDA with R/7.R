#rating affects on purchase decision wrt to subscription

table(data$Do.you.have.any.subscription.on.any.E.Commerce.site., data$On.a.scale.of.0.5..how.much.does.an.overall.product.rating.affect.your.purchase.decision.)
df1 <- as.matrix(unclass(table(data$Do.you.have.any.subscription.on.any.E.Commerce.site., data$On.a.scale.of.0.5..how.much.does.an.overall.product.rating.affect.your.purchase.decision.)
))
Y_n <- rep(c("Yes", "No"),c(6,6))
Rating <- rep(c(0,1,2,3,4,5),2)
Value <- c((df1[1,]/rowSums(df1)[1])*100 , (df1[2,]/rowSums(df1)[2])*100)
df2 <- cbind(Y_n,Rating,Value)
rownames(df2) <- NULL
df2 <- as.data.frame(df2)
df2$Value <- round(Value,2)
ggplot(df2 , aes(x = Y_n , y = Value, fill = Rating))+
  geom_bar(stat = "identity", position = "dodge")+
  labs(title = "Rating Affects in Purchase Decision w.r.t Premium Customers(having subscription over e-commerece sites)",
       x = "Having Subscription", y = "Percentage of Customers Rating" )
