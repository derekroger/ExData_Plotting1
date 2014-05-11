## Exploratory Data Analysis ##
## Assignment 1 - Derek Brown ##
## Plot 4 ##

source("readData.R")

data <- readData()

par(mfrow=c(2,2))

# Plot 1
plot(data$Time, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# Plot 2
plot(data$Time, data$Voltage, type="l", ylab="Voltage", xlab="datetime")

# Plot 3
plot(data$Time, data$Sub_metering_1, type="n", ylab="Energy sub metering",xlab="")
points(data$Time, data$Sub_metering_1, type="l", col="black")
points(data$Time, data$Sub_metering_2, type="l", col="red")
points(data$Time, data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1,1), box.lwd=0)

# Plot 4
plot(data$Time, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
dev.copy(png, file="plot4.png")
dev.off()
