#Question6

LA_sub<-subset(NEI,fips=="06037"&type=="ON-ROAD")
LA_tot<-aggregate(LA_sub$Emissions,by=list(year=LA_sub$year,type=LA_sub$type,location=LA_sub$fips),sum)#City of Los Angeles
LA_balt<-rbind(LA_tot,tot_veh)
LA_balt$location<-factor(LA_balt$location,level=c('06037','24510'),labels=c('Los Angeles','Baltimore'))
png(file="Q6.png",width=480,height=480)
qplot(LA_balt$year,LA_balt$x,data=LA_balt,color=LA_balt$location,geom="line")+ggtitle("Motor Vehicle Emissions in Baltimore vs. Los Angeles  Counties")+xlab("Years")+ylab("Emission levels")
dev.off()
