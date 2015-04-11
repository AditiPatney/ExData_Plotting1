/***Plot2***/
EPC_subset<-transform(EPC_subset,day = as.POSIXct(paste(Date,Time)),"%d/%m/%Y %H:%M:%S")
plot(EPC_subset$day,EPC_subset$Global_active_power/500,type = "l",xlab="",ylab="Global Active Power (Kilowatts)")
dev.copy(png,file = "Plot2.png")
dev.off()