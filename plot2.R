#Subset emission information for Baltimore only
NEI <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")             
SCC <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds")  
baltimoreEmission<-subset(NEI, NEI$fips==24510)           
totalBaltimoreEmission<-tapply(baltimoreEmission$Emissions, INDEX=baltimoreEmission$year, sum)   
barplot(totalBaltimoreEmission, main="Total Emissions in Baltimore, MD by Year", xlab="Year", ylab="Emissions")

