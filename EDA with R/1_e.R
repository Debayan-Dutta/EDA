### summarisation on electronic sites 


library(dplyr)
df1 <- data %>% 
  select(Which.e.commerce.sites.you.prefer.for.buying.electronics.product.) %>% 
  group_by(data$Which.e.commerce.sites.you.prefer.for.buying.electronics.product.) %>% 
  summarise(count = n())
colnames(df1)[1] <- "Major E-commerce_sites"
library(ggplot2)
ggplot(data = df1, aes(x =`Major E-commerce_sites`, y = count , fill = `Major E-commerce_sites`)) +
  geom_bar(stat = "identity")+
  coord_polar()+
  ggtitle("Summarisation of E-commerce sites with respect to Electronics")
