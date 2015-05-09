plot2 <- function(data) {
    png('plot2.png')
    
    plot(data$Time, data$Global_active_power, 
         type = 'n', 
         xlab = "",
         ylab = "Global Active Power (kilowatts)")
    lines(data$Time, data$Global_active_power)
    
    dev.off()
}