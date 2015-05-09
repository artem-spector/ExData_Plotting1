readAndPlot <- function() {
    data <- readData('household_power_consumption.txt')
    plot1(data)
    plot2(data)
    plot3(data)
    plot4(data)
}

# Read the data subset from the input file
readData <- function(file) {
    # read the column names from the first row
    colnames <- names(read.table(file, header = TRUE, sep = ";", nrows = 1))
    
    # find the row numbers containing data for Feb 1 and 2 2007
    lines <- grep(("^[1|2]/2/2007"), readLines(file));
    # read the appropriate lines
    data <- read.table(file, sep = ";", na.strings = "?", 
                     skip = lines[1]-1, nrows = length(lines))
    # restore the column names
    names(data) <- colnames
    
    # make the Time column contain POSIX date/time, and remove the Date column
    data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
    data <- data[2:9]    
}