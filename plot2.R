plot2 <- function(data){
        
        png(filename ="plot2.png", width = 480, height = 480)
        plot(data$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)", xaxt = "n")
        axis(side=1, at=c(1, 1441, nrow(data)), labels=c("Thu","Fri","Sat"))
        dev.off()
        
}