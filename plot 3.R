dat <- read.table("D:/hpc.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
dat$Date <- as.Date(dat$Date, "%d/%m/%Y")
dat2 <- subset(dat,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
dat2 <- dat2[complete.cases(dat2),]
dateT <- paste(dat2$Date, dat2$Time)
dat2 <- cbind(dateT, dat2)
dat2$dateT <- as.POSIXct(dateT)
dat2$dateT

plot(dat2$Sub_metering_1~dat2$dateT,col=c("black"), type="l", ylab="Energy submetring")
lines(dat2$Sub_metering_2~dat2$dateT,col="red")
lines(dat2$Sub_metering_3~dat2$dateT,col="blue")

