plot4 <- function(data) {
    png('plot4.png')
    
    par(mfrow = c(2,2))
    
    plot(data$Time, data$Global_active_power, 
         type = 'n',
         xlab = "",
         ylab = "Global Active Power")
    lines(data$Time, data$Global_active_power)
    
    plot(data$Time, data$Voltage,
         type = "n",
         xlab = "datetime",
         ylab = "Voltage")
    lines(data$Time, data$Voltage)
    
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

    plot(data$Time, data$Global_reactive_power,
         type = "n",
         xlab = "datetime",
         ylab = "Global_reactive_power")
    lines(data$Time, data$Global_reactive_power)
    
    dev.off()
}