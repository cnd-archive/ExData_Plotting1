energyUse <- read.csv("feb_2007_energy_usage.txt", sep=";", na.strings=c("?"))

png("plot1.png", width = 480, height = 480, units = "px")
hist(energyUse$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")
dev.off()