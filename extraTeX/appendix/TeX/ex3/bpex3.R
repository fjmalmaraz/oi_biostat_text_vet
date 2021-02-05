unlockBinding("fivenum", as.environment("package:stats"))
assign("fivenum",function(x,na.rm=TRUE){
  quantile(x,probs=c(0,0.25,0.5,0.75,1))
},"package:stats")
unlockBinding("fivenum", getNamespace("stats"))
assign("fivenum",function(x,na.rm=TRUE){
  quantile(x,probs=c(0,0.25,0.5,0.75,1))
},getNamespace("stats"))
x<-read.csv("ex2.txt",header=F)
#quantile.original<-quantile.default
#quantile.default<-function(x,...){quantile.original(x,type=2,...)}
png("boxplotEx2.png")
bxp(boxplot(x),axes=F)
axis(2,at=c(37,43,48,53.25,68))
dev.off()
#Exercise 4
png("barplotEx4.png")
x4<-c("Morning" , "Morning" , "Night" , "Nonworking" , "Night" , "Afternoon" , "Night" , "Morning" , "Morning" , "Nonworking" , "Night" , "Afternoon" , "Afternoon" , "Morning" , "Morning","Morning","Afternoon","Morning", "Night","Afternoon","Afternoon","Morning","Afternoon","Nonworking","Morning","Night","Nonworking","Morning" ,"Afternoon","Nonworking","Afternoon", "Night")
barplot(table(x4))
dev.off()


# Exercise 5
x5<-c(0.10,0.30,0.34,0.36,0.42,0.42,0.45,0.48,0.50,0.52,0.55, 0.58, 0.62, 0.63, 0.64, 0.65, 0.65, 0.66, 0.69, 0.70,  0.72, 0.73, 0.74, 0.74, 0.75, 0.76, 0.77, 0.78, 0.81, 0.83,  0.85 , 0.86 , 0.88 , 0.90 , 0.94 , 0.98 , 1.04 ,1.12,1.16,1.24)
png("boxplotEx5.png")
bxp(boxplot(x5),axes=F)
axis(2,at=c(0,0.1,0.3,0.54,0.71,0.84,1.24))
dev.off()
png("histEx5.png")
hist(x5,main=NULL,xlab="copper level")
dev.off()
