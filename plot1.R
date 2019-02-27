plot1 <- function(data) {
        
        png(filename ="plot1.png", width = 480, height = 480)
        hist(data$Global_active_power, freq=TRUE, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red")
        dev.off()
        
}




