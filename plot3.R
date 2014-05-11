## Exploratory Data Analysis ##
## Assignment 1 - Derek Brown ##
## Plot 3 ##

source("readData.R")

data <- readData()

plot(data$Time, data$Sub_metering_1, type="n", ylab="Energy sub metering",xlab="")
points(data$Time, data$Sub_metering_1, type="l", col="black")
points(data$Time, data$Sub_metering_2, type="l", col="red")
points(data$Time, data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1,1))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
