## -----------------------------------------------------------------------------------------------------------------------------------------------------------------
library(readr)

## -----------------------------------------------------------------------------------------------------------------------------------------------------------------
df <- read_csv("./data/hhpc-070201-070202.csv")

## -----------------------------------------------------------------------------------------------------------------------------------------------------------------
plot(df$Sub_metering_1, type="l", xlab="",axes=FALSE, ylab="Energy sub metering")
lines(df$Sub_metering_2, type="l", col="red")
lines(df$Sub_metering_3, type="l", col="blue")
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(0,10,20,30))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       col=c("red", "blue", "black"), lty=1, cex=.9)
box(lty = 1, col = 'black')
dev.copy(png,"plot3.png")
dev.off()
