## -----------------------------------------------------------------------------------------------------------------------------------------------------------------
library(readr)

## -----------------------------------------------------------------------------------------------------------------------------------------------------------------
df <- read_csv("./data/hhpc-070201-070202.csv")

## -----------------------------------------------------------------------------------------------------------------------------------------------------------------
par(mfrow=c(2,2), mar = c(4, 4, 1, 1))
plot(df$Global_active_power, type="l", xlab="",axes=FALSE, ylab="Global Active Power")
axis(2,at=c(0,2,4,6))
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
box(lty = 1, col = 'black')

plot(df$Voltage, type='l', axes=FALSE, ylab="Voltage", xlab="datetime")
axis(2, at = c(234,238,242,246))
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
box(lty = 1, col = 'black')

plot(df$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="",axes=FALSE)
lines(df$Sub_metering_2, type="l", col="red")
lines(df$Sub_metering_3, type="l", col="blue")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       col=c("red", "blue", "black"), lty=1, cex=0.9)
box(lty = 1, col = 'black')

plot(df$Global_reactive_power, type="l", axes=FALSE, ylab="Global_reactive_power", xlab="datetime")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,.1,.2,.3,.4,.5))
box(lty = 1, col = 'black')
dev.copy(png,"plot4.png")
dev.off()

