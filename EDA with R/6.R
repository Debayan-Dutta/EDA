#Rating affects on purchase decision w.r.t educational qualification

df1<- as.data.frame(unclass(table(data$Highest.Educational.Qualification, data$On.a.scale.of.0.5..how.much.does.an.overall.product.rating.affect.your.purchase.decision.)
))
View(df1)
df1$Total <- apply(df1,1, sum)
df1 <- as.matrix(df1)
graduate_percent <- (as.vector(df1[1,])[-7]/df1[1,7])*100
Higher_Secondary_percent <- (as.vector(df1[2,])[-7]/df1[2,7])*100
Post_Graduate_and_above_percent <- (as.vector(df1[3,])[-7]/df1[3,7])*100
Secondary_percent <- (as.vector(df1[4,])[-7]/df1[4,7])*100
Education <- c("Secondary", "Higher Secondary", "Graduate", "Post Graduate and above")
Educational_level <- rep(Education,c(6,6,6,6))
Rating <- rep(c(0,1,2,3,4,5), 4)
Value <- c(Secondary_percent,Higher_Secondary_percent,graduate_percent,Post_Graduate_and_above_percent)
df2 <- cbind.data.frame(Educational_level, Rating, Value)
library(ggplot2)
ggplot(df2, aes(x= Educational_level, y = Value, fill = Rating))+
  geom_bar(stat = "identity")+
  coord_polar()+
  labs(title = "Rating Affects in Purchase Decision w.r.t Educational Qualification", x = "", y = "")

