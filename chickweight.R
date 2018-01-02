a=1:10
b=1:10
c=11:20
str(a)
identical(a,b)
identical(a,c)


ChickWeight
c=ChickWeight
ChickWeight[,1]
x=c[,c("weight")]
y=ChickWeight$weight
identical(x,y)

x=ChickWeight[,c(4,1)]
identical(x,y)
y=ChickWeight[,c(1,3)]

n=ChickWeight[c(1,3,5,7,9),]
nrow(c)
n=ChickWeight[ChickWeight$Chick == 48,]
plot(n$weight)
o=subset(ChickWeight,Chick==48)
identical(n,o)
plot(o$weight)

boxplot(ChickWeight$weight ~ ChickWeight$Diet, las=1)
