## Exploratory Data Analysis ##
## Assignment 1 - Derek Brown ##
## Plot 2 ##

source("readData.R")

data <- readData()

plot(data$Time,data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png")
dev.off()
