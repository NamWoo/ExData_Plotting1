plot4 <- function(data){
        
        
        at_val <- c(1, 1441, nrow(data))
        at_labels <- c("Thu","Fri","Sat")
        
        png(filename ="plot4.png", width = 480, height = 480)
        par(mfrow=c(2,2))
        plot(data$Global_active_power, type="l", xlab="", ylab="Global Active Power", lab=c(3,4,31) , xaxt = "n")
        axis(side=1, at=at_val, labels=at_labels)
        
        plot(c(data$Voltage), type="l", xlab="datetime", ylab="Voltage", lab=c(3,7,31) , xaxt = "n")
        axis(side=1, at=at_val, labels=at_labels)
        
        plot(c(data$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering", lab=c(3,4,31) , xaxt = "n")
        axis(side=1, at=at_val, labels=at_labels)
        lines(data$Sub_metering_2,col="red")
        lines(data$Sub_metering_3,col="blue")
        legend("topright","left",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1, bty="n")
        
        plot(c(data$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power", lab=c(3,6,31) , xaxt = "n")
        axis(side=1, at=at_val, labels=at_labels)
        dev.off()
        
}