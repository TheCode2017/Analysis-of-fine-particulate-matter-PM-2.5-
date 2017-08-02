
#Question 3
library(dplyr)
balt<-filter(NEI,fips=="24510")
tot_balt<-aggregate(balt$Emissions,by=list(Category=balt$type,balt$year),FUN=sum)
names(tot_balt)<-c("type","year","emission")
library(ggplot2)
#qplot(tot_balt$year,tot_balt$emission,color=tot_balt$type,geom=c("point","smooth"))
png(file="Q3.png",width=480,height=480)
g<-ggplot(tot_balt,aes(tot_balt$year,tot_balt$emission,group=tot_balt$type))
g+geom_point(size=4,alpha=1/2,aes(color=tot_balt$type))+geom_line()
dev.off()
