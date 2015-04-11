/*****Plot3 *****/

EPC_subset$Sub_metering_1 <- as.numeric(as.character(EPC_subset$Sub_metering_1))
EPC_subset$Sub_metering_2 <- as.numeric(as.character(EPC_subset$Sub_metering_2))
EPC_subset$Sub_metering_3 <- as.numeric(as.character(EPC_subset$Sub_metering_3))

plot(EPC_subset$day,EPC_subset$Sub_metering_1,type="l",xlab="",ylab="Energy Sub Metering")
lines(EPC_subset$day,EPC_subset$Sub_metering_2,col="red")
lines(EPC_subset$day,EPC_subset$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),lwd=c(1,1))
dev.copy(png,file = "Plot3.png")
dev.off()