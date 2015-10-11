## This file plots four different diagrams in a single plot

## Source the file to load the data
source("load_data.R")

## Plotting
png(filename = "plot4.png", width = 480, height = 480,
    units = "px", bg = "transparent")

## Setting the layout
par(mfrow = c(2, 2))

## Topleft
plot(sub_data$Time, sub_data$Global_active_power, type = 'l', 
     xlab = "", ylab = "Global Active Power")
## Topright
plot(sub_data$Time, sub_data$Voltage, type = 'l',
     xlab = "datetime", ylab = "Voltage")
## Bottomleft
plot(sub_data$Time,sub_data$Sub_metering_1, type = 'l', 
     xlab = "", ylab = "Energy sub metering", col = "black")
lines(sub_data$Time,sub_data$Sub_metering_2, type = 'l', col = "red")
lines(sub_data$Time,sub_data$Sub_metering_3, type = 'l', col = "blue")
legend("topright", lwd = 1, col = c("black", "red", "blue"), bty = 'n', 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## Bottomright
plot(sub_data$Time, sub_data$Global_reactive_power, type = 'l',  
     xlab = "datetime", ylab = "Global_reactive_power")

dev.off()