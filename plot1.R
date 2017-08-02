## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Question 1
total<-aggregate(NEI$Emissions,by=list(Category=NEI$year),FUN=sum)
png(file="Q1.png",width=480,height=480)
plot(total$Category,total$x,type="o",xlab="year",ylab="Emissions",main="Total PM 2.5 emissions")
dev.off()
#reg<-lm(x~Category,data=total)
#abline(reg)
