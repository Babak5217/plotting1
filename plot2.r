household_power_consumption <- read.csv("~/R/household_power_consumption.txt",
                                        header=TRUE, sep=";")
names(household_power_consumption) 
household_power_consumption$timen=strptime(paste(household_power_consumption$Date, household_power_consumption$Time), '%d/%m/%Y %H:%M:%S')
x <- subset(household_power_consumption , Date == "1/2/2007"|Date =="2/2/2007")
library(grDevices)
library(graphics)


png(file= "plot2.png", height=480)

plot(x$timen, as.numeric(x$Global_active_power)/1000, type ="l",xlab = NULL, ylab =  "Global Active Power(kilowatts)")
dev.off()
