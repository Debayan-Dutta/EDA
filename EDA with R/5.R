# pre covid and post covid box plot

library(ggplot2)
data <- data[-20,]
df2 <- data.frame(pre_post = rep(c("pre","post"), each = nrow(data)),
                  value = c(data$On.an.average..yearly..approximately...how.many.products.you.bought.from.E.commerce.sites.on.pre.Covid.situation.,
                            data$On.an.average..yearly..approximately...how.many.products.you.buy.from.E.commerce.sites.on.post.Covid.situation.))
View(df2)
ggplot(df2, aes(pre_post, value)) + geom_boxplot() + ylim(0,20)


# pre covid and post covid scatter plot

df1 <- data %>%
  select(On.an.average..yearly..approximately...how.many.products.you.bought.from.E.commerce.sites.on.pre.Covid.situation. ,On.an.average..yearly..approximately...how.many.products.you.buy.from.E.commerce.sites.on.post.Covid.situation.)
ggplot(df1 , aes(x = On.an.average..yearly..approximately...how.many.products.you.bought.from.E.commerce.sites.on.pre.Covid.situation., y = On.an.average..yearly..approximately...how.many.products.you.buy.from.E.commerce.sites.on.post.Covid.situation.))+
  geom_point()+
  geom_smooth()+
  coord_cartesian(xlim = c(0,50))+
  coord_cartesian(ylim = c(0,50))+
  labs(x= "Number of products people usually buy in pre covid situation", y = "Number of products people usually buy in post covid situation")+
  ggtitle("Comparision on buying product in pre-covid and post-covid situation")
cor(data$On.an.average..yearly..approximately...how.many.products.you.bought.from.E.commerce.sites.on.pre.Covid.situation., data$On.an.average..yearly..approximately...how.many.products.you.buy.from.E.commerce.sites.on.post.Covid.situation.)
