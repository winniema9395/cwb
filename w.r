get_weather=function(FILE,LABEL) {
  title=c("�[���ɶ�","��������","��������",
          "�����̰�����","�����̰������ɶ�","�����̧C����",
          "�����̧C�����ɶ�","���","�̰����","�̰���Ůɶ�",
          "�̧C���","�̧C��Ůɶ�","�S�I�ū�","�۹�ë�",
          "�̤p�۹�ë�","�̤p�۹�ë׮ɶ�","���t","���V",
          "�̤j�}��","�̤j�}�����V","�̤j�}�����t�ɶ�",
          "�����q","�����ɼ�","�[��10�����̤j�����q",
          "�[��10�����̤j�����_�l�ɶ�","�@�p�ɳ̤j�����q",
          "�@�p�ɳ̤j�����q�_�l�ɶ�","��Ӯɼ�","��Ӳv",
          "���ѪŤ�g�q","�ਣ��","A���]�o�q")
  x=read.csv(FILE,skip=0,header=F)
  names(x) = title; y=x[,c(1,2,8,9,11,14)];
  y['label']=LABEL; return (y) ;
}
jul = get_weather('201707.csv', '201707')
aug = get_weather('201708.csv', '201708')
sep = get_weather('201709.csv', '201709')
oct = get_weather('201710.csv', '201710')
nov = get_weather('201711.csv', '201711')
dec = get_weather('201712.csv', '201712')
par(mar=c(5,4,4,2)+1)
boxplot(sep[,c(3,4,5)],ylab="���" ,xlab="201709", las=1)

w2017=rbind(jul,aug,sep,oct,nov,dec)
table(w2017$label)
plot(���~label,w2017)

par(mar=c(5,4,4,2)+1)
boxplot(aug[,c(3,4,5)],ylab="���" ,xlab="201708", las=1)
boxplot(jul[,c(3,4,5)],ylab="���" ,xlab="201707", las=1)
boxplot(dec[,c(3,4,5)],ylab="���" ,xlab="201712", las=1)

plot(aug$��������, las=1)
lines(aug$��������, col="blue")
plot(dec$��������,type="o",pch=16,col="black",las=1,xlab="
���",ylab="����",main="2017/12",axes=TRUE)

