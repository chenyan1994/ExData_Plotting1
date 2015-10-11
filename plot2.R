## This file plots the Global active power ~ Time relation

## Source the file to load the data
source("load_data.R")

## Plotting
png(filename = "plot2.png", width = 480, height = 480,
    units = "px", bg = "transparent")

plot(sub_data$Time, sub_data$Global_active_power, type = 'l', 
     xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()