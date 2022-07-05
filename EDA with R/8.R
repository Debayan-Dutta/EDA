# damage product rating using bubble plot
df1 <- as.matrix(unclass(table(data$Do.you.often.receive.damage.products.or.different.products.which.you.have.ordered.)))
df2 <- cbind.data.frame(rownames(df1), df1[,1])  
rownames(df2) <- NULL
colnames(df2) <- c("Type", "Count")
# install.packages("packcircles")
library(packcircles)
pck <- circleProgressiveLayout(df2$Count, sizetype = "area")
mydata <- cbind(df2,pck)
myplotcord <- circleLayoutVertices(pck)
library(ggplot2)
p1 <- ggplot()
p1 <- p1 + geom_polygon(data = myplotcord, aes(x, y, group = id, fill = as.factor(id)))+
  geom_text(x= mydata$x, y = mydata$y,aes(label = mydata$Type))+
  theme(legend.position = "none")+
  ggtitle("People's View On Damage Product")
p1 