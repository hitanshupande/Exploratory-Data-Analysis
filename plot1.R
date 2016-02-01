
#Import data
NEI <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")             
SCC <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds")  


totalEmission <- tapply(NEI$Emissions, INDEX=NEI$year, sum)
barplot(totalEmission, main = "Total Emission by Year", xlab = "Year", ylab = "Emission")
