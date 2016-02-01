library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

greps1<-unique(grep("coal", SCC$EI.Sector, ignore.case=TRUE, value=TRUE))  
data1<-subset(SCC, EI.Sector %in% greps1)
coal<-subset(NEI, SCC %in% data1$SCC)
greps1
ggplot(data=coal, aes(x=year, y=Emissions, fill = type)) + 
    geom_bar(stat="identity", position=position_dodge()) + 
    ggtitle("U.S. Coal Combustion-Related Emissions: 1999-2008")
