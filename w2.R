get_weather=function(FILE,LABEL) {
  title=c("觀測時間","測站氣壓","海面氣壓",
          "測站最高氣壓","測站最高氣壓時間","測站最低氣壓",
          "測站最低氣壓時間","氣溫","最高氣溫","最高氣溫時間",
          "最低氣溫","最低氣溫時間","露點溫度","相對溼度",
          "最小相對溼度","最小相對溼度時間","風速","風向",
          "最大陣風","最大陣風風向","最大陣風風速時間",
          "降水量","降水時數","觀測10分鐘最大降水量",
          "觀測10分鐘最大降水起始時間","一小時最大降水量",
          "一小時最大降水量起始時間","日照時數","日照率",
          "全天空日射量","能見度","A型蒸發量")
  x=read.csv(FILE,skip=1,header=F)
  names(x) = title; y=x[,c(1,2,8,9,11,14)];
  y['label']=LABEL; return (y) ;
}
jan = get_weather('201801.csv', '201801')
plot(jan$相對溼度,type="o",pch=25,col="purple",las=1,xlab="
     日期",ylab="相對溼度",main="2018/01",axes=TRUE)
plot(jan$最低氣溫,type="o",pch=10,col="purple",las=1,xlab="
     日期",ylab="最低氣溫",main="2018/01",axes=TRUE)
