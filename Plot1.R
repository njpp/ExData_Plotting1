# Plot 1
# Histogram of Frequency vs Global Active Power

# Read in the power consumption data set

housepower <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings ="?",stringsAsFactors=FALSE)
#Add another column DateTime in to the data set
housepower$DateTime <- paste(housepower$Date,housepower$Time)
housepower$DateTime <- as.Date(housepower$DateTime,format="%d/%m/%Y %H:%M:%S")

#Extract subset of dataset that has dates from 01-feb-2007 to 02-feb-2007
library(dplyr)
Hsubset<- filter(housepower, DateTime >= as.Date("2007-02-01 00:00:00"), DateTime <= as.Date("2007-02-02 00:00:00"))

# Start the png device
png(filename="plot1.png", height=480, width=480, bg="transparent")

# Plot the histogram
hist(sub_data$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

# Save the figure
dev.off()