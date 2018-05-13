dat<-read.csv2("D:/hpc.txt",header=TRUE,na.strings="?")

head(dat)
str(dat$date)
dat$date<-as.Date(as.character(dat$Date, "%y%m%d%"))

dat2<-dat[dat$date>="01-02-2007" & dat$date<"02-02-2007",]
head(dat2)
dim(dat2)
library(lattice)
dat2$Global_active_power<-as.numeric(as.character(dat2$Global_active_power))
histogram(dat2$Global_active_power,breaks=22,col="red",xlim=c(0,6),type="count",xlab="Global Active Power (killowatts)", ylab="frequency", title= "Global Active Power")
summary(dat2$Global_active_power)
?histogram
