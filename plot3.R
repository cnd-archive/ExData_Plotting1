energyUse <- read.csv("feb_2007_energy_usage.txt", sep=";", na.strings=c("?"))
datetimes <- paste(energyUse$Date, energyUse$Time)
datetimes <- strptime(datetimes, "%d/%m/%Y %H:%M:%S")
energyUse$datetime <- datetimes

png("plot3.png", width = 480, height = 480, units = "px")
plot(energyUse$datetime, energyUse$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(energyUse$datetime, energyUse$Sub_metering_2, col = "red")
lines(energyUse$datetime, energyUse$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lwd = 1)
dev.off()