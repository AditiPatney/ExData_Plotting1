/*****Reading dataset*****/

EPC <- read.table("~/Downloads/household_power_consumption.txt",header=TRUE,sep=";")
install.packages("date",repos="http://lib.stat.cmu.edu/R/CRAN",dependencies= TRUE)
library(date)
EPC$Date <- as.Date(EPC$Date,format="%d/%m/%Y")
EPC_subset <- EPC[(EPC$Date=="2007-02-01")|(EPC$Date=="2007-02-02"),]
nrow(EPC_subset)

/******Plot1****/
EPC_subset$Global_active_power<- as.numeric(EPC_subset$Global_active_power)
mar = c(2,2,2,2)
hist(EPC_subset$Global_active_power/500,col="red",main= "Global Active Power",xlab = "Global Active Power (Kilowatts)",ylab="Frequecy")
dev.copy(png,file = "Plot1.png")
dev.off()