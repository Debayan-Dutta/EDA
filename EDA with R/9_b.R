#how much will you prefer for online shopping

#(B) w.r.to QUALIFICATION
df3 <- as.data.frame(unclass(table(data$On.a.scale.of.0.5.how.much.will.you.prefer.others.for.online.shopping., data$Highest.Educational.Qualification)))
#df1$Total <- apply(df1,1,sum)
Rating <- rep(c(0,1,2,3,4,5),4)
Qualification <- c(rep(c("Secondary"), 6), rep(c("Higher Secondary"),6), rep(c("Graduate"),6), rep(c("Post Graduate and above"),6))
Value <- c(df3$Secondary , df3$`Higher Secondary`, df3$Graduate, df3$`Post Graduate and above`)
df4 <- cbind.data.frame(Rating,Qualification,Value)
ggplot(data = df4, aes(x = Rating, y = Value, fill =Qualification)) +
  geom_bar(stat = "identity")+
  coord_polar()+
  ggtitle("Preference of online shopping w.r.t qualification")
