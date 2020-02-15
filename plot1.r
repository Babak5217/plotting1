household_power_consumption <- read.csv("~/R/household_power_consumption.txt",
 header=TRUE, sep=";")
household_power_consumption$timen=strptime(paste(household_power_consumption$Date, household_power_consumption$Time), '%d/%m/%Y %H:%M:%S')
names(household_power_consumption) 
x <- subset(household_power_consumption , Date == "1/2/2007"|Date =="2/2/2007")
library(grDevices)
library(graphics)

png(file= "plot1.png", height=480)



hist(as.numeric(x$Global_active_power)/1000,xlab = "Global Active Power(kilowatts)",
     main ="Global Active Power", col = "red" )

dev.off()


