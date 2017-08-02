#Question 5

names(NEI)
veh_sub<-subset(NEI,fips=="24510"&type=="ON-ROAD")
tot_veh<-aggregate(veh_sub$Emissions,by=list(year=veh_sub$year,type=veh_sub$type,location=veh_sub$fips),sum)#City of Baltimore
png(file="Q5.png",width=480,height=480)
qplot(tot_veh$year,tot_veh$x,data=tot_veh,geom="line")+ggtitle("Emissions from motor vehicles")+xlab("Year")+ylab("Pm2.5 levels")
dev.off()
