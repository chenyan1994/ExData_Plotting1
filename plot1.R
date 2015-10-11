## This file plot the histogram of Global Active Power (kilowatts)

## Source the file to load the data
source("load_data.R")

## Plotting
png(filename = "plot1.png", width = 480, height = 480,
    units = "px", bg = "transparent")

hist(sub_data$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

dev.off()
