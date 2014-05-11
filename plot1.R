## Exploratory Data Analysis ##
## Assignment 1 - Derek Brown ##
## Plot 1 ##

source("readData.R")

data <- readData()

hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()
