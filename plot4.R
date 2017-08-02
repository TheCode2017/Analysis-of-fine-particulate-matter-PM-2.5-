
#Question 4


SCC_sub<-SCC[grepl("Coal",SCC$Short.Name),]# Extracting emissions from coal combustion-related
NEI_sub<-NEI[NEI$SCC %in% SCC_sub$SCC,]#Matching the columns in NEI$SCC to the columns in SCC_sub

tot_coal<-aggregate(NEI_sub$Emissions,by=list(Category=NEI_sub$year),FUN=sum)
library(ggplot2)
png(file="Q4.png",width=480,height=480)
plot4 <- ggplot(NEI_sub, aes(x = factor(year), y = Emissions, fill =type)) + geom_bar(stat= "identity", width = .5) + xlab("year") +ylab("Coal-Related PM2.5 Emissions") + ggtitle("Total Coal-Related PM2.5 Emissions")

print(plot4)
dev.off()
