with(ChickWeight, plot(Time, weight, col = Diet,pch=20,ylab='Weight'))
legend('topleft',legend=paste("Diet",levels(ChickWeight$Diet)),col=1:4,lwd=3)

ChickWeight$Chick
table(ChickWeight$Chick)
sort(table(ChickWeight$Chick))
