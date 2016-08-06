energyUse <- read.csv("feb_2007_energy_usage.txt", sep=";", na.strings=c("?"))
datetimes <- paste(energyUse$Date, energyUse$Time)
datetimes <- strptime(datetimes, "%d/%m/%Y %H:%M:%S")
energyUse$datetime <- datetimes

png("plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2, 2))

# First plot
plot(energyUse$datetime, energyUse$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

# Second plot
plot(energyUse$datetime, energyUse$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

# Third plot
plot(energyUse$datetime, energyUse$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(energyUse$datetime, energyUse$Sub_metering_2, col = "red")
lines(energyUse$datetime, energyUse$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lwd = 1, bty = "n")

# Fourth plot
plot(energyUse$datetime, energyUse$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")

dev.off()