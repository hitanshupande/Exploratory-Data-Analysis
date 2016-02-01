library(ggplot2)
#Import data
NEI <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")             
SCC <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds") 

#Plot emission data by type across years
ggplot(data = baltimore, aes(x=year, y=Emissions, fill=type)) + 
    geom_bar(stat = "identity", position = "dodge") +
    ggtitle("Baltimore Emission by Type across Years")
