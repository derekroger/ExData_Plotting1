readData <- function(x){
    filename <- "household_power_consumption.txt"
    data <- read.table(filename, sep=";", header=TRUE)
    
    data$Date <- as.Date(data$Date,"%d/%m/%Y")
    data$Time <- strptime(paste(data$Date,data$Time,sep=" "), format="%Y-%m-%d %H:%M:%S")
    data$Global_active_power <- as.numeric(as.character(data$Global_active_power))
    data$Global_reactive_power <- as.numeric(as.character(data$Global_reactive_power))
    data$Voltage <- as.numeric(as.character(data$Voltage))
    data$Global_intensity <- as.numeric(as.character(data$Global_intensity))
    data$Sub_metering_1 <- as.numeric(as.character(data$Sub_metering_1))
    data$Sub_metering_2 <- as.numeric(as.character(data$Sub_metering_2))
    data$Sub_metering_3 <- as.numeric(as.character(data$Sub_metering_3))
    
    data <- data[(data$Date == "2007-02-01" | data$Date == "2007-02-02"),]
    
    return(data)
}