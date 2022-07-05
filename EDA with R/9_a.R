# how much will you prefer for online shopping

#(a) w.r.to GENDER
df1 <- as.data.frame(unclass(table(data$On.a.scale.of.0.5.how.much.will.you.prefer.others.for.online.shopping., data$Gender)))
df1$Total <- apply(df1,1,sum)
Rating <- rep(c(0,1,2,3,4,5),2)
Gender <- c(rep(c("MALE"), 6), rep(c("FEMALE"),6))
Value <- c(df1$Male,df1$Female)
df2 <- cbind.data.frame(Rating,Gender,Value)
ggplot(data = df2, aes(x = Rating, y = Value, fill =Gender)) +
  geom_bar(stat = "identity")+
  coord_polar()+
  ggtitle("Preference of online shopping w.r.t Gender")