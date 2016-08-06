energyUse <- read.csv("feb_2007_energy_usage.txt", sep=";", na.strings=c("?"))
datetimes <- paste(energyUse$Date, energyUse$Time)
datetimes <- strptime(datetimes, "%d/%m/%Y %H:%M:%S")
energyUse$datetime <- datetimes

png("plot2.png", width = 480, height = 480, units = "px")
plot(energyUse$datetime, energyUse$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()