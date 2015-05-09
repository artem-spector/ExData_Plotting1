plot3 <- function(data) {
    png('plot3.png')
    
    plot(data$Time, data$Sub_metering_1, 
         type='n', 
         xlab = "", 
         ylab = "Energy sub metering")
    
    legend("topright", 
           legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
           col= c('black', 'red', 'blue'), 
           lty = 1)
    
    lines(data$Time, data$Sub_metering_1, col='black')
    lines(data$Time, data$Sub_metering_2, col='red')
    lines(data$Time, data$Sub_metering_3, col='blue')
    
    dev.off()
}