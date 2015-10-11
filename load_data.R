## This file loads the original dataset and cleans the data

## Read the txt data file
file_name <- "household_power_consumption.txt"
data <- read.table(file_name, header = TRUE, sep = ';', na.strings = '?')

## Subset data from the dates 2007-02-01 and 2007-02-02
sub_data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]

## Convert the Date and Time variables to Date/Time classes
sub_data$Time <- strptime(paste(sub_data$Date, sub_data$Time), format = "%d/%m/%Y %H:%M:%S")
sub_data$Date <- strptime(sub_data$Date, format = "%d/%m/%Y")
