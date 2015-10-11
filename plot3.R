## This file plots the energy sub metering ~ time relation with legend

## Source the file to load the data
source("load_data.R")

## Plotting
png(filename = "plot3.png", width = 480, height = 480,
    units = "px", bg = "transparent")

## Plot Sub_metering_1
plot(sub_data$Time,sub_data$Sub_metering_1, type = 'l', 
     xlab = "", ylab = "Energy sub metering", col = "black")

## Add the data Sub_metering_2, Sub_metering_3 to the plot
lines(sub_data$Time,sub_data$Sub_metering_2, type = 'l', col = "red")
lines(sub_data$Time,sub_data$Sub_metering_3, type = 'l', col = "blue")

## Add legend to the topright of the plot
legend("topright", lwd = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()