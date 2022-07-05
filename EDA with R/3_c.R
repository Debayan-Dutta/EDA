# which E-commerce site prefer for buying grocery product w.r.t Gender

par(mfrow=c(1,2))
a=filter(data, Gender=="Male")
b=filter(data, Gender=="Female")
pie(table(a$Which.e.commerce.sites.you.prefer.for.buying.grocery.items.),main="Sites preferences for purchasing Grocery items for Male")
pie(table(b$Which.e.commerce.sites.you.prefer.for.buying.grocery.items.),main="Sites preferences for purchasing Grocery items for Female")
mtext("Main Title:E-commerce site prefer for buying Grocery items w.r.t. Gender",side=3,line=-31,outer=TRUE)  
