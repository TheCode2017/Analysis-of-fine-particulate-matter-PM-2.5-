
#Question 2
install.packages("dplyr")
library(dplyr)
balt<-filter(NEI,fips=="24510")
tot_balt<-aggregate(balt$Emissions,by=list(Category=balt$year),FUN=sum)
png(file="Q2.png",width=480,height=480)
plot(tot_balt$Category,tot_balt$x,type="o",main="Total PM 2.5 emission in Baltimore county",xlab="Dates",ylab="Emissions")
dev.off()
