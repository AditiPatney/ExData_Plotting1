/****Plot4*****/

par(mfrow=c(2,2))
plot(EPC_subset$day,EPC_subset$Global_active_power/500,type = "l",xlab="",ylab="Global Active Power (Kilowatts)")
EPC_subset$Voltage<-as.numeric(as.character(EPC_subset$Voltage))
 plot(EPC_subset$day,EPC_subset$Voltage,type = "l",xlab="datetime",ylab="Voltage")
 plot(EPC_subset$day,EPC_subset$Sub_metering_1,type="l",xlab="",ylab="Energy Sub Metering")
lines(EPC_subset$day,EPC_subset$Sub_metering_2,col="red")
lines(EPC_subset$day,EPC_subset$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),lwd=c(1,1))
EPC_subset$Global_reactive_power<-as.numeric(as.character(EPC_subset$Global_reactive_power))
plot(EPC_subset$day,EPC_subset$Global_reactive_power,type = "l",xlab="datetime",ylab="Global_reactive_power")
dev.copy(png,file = "Plot4.png")
dev.off()