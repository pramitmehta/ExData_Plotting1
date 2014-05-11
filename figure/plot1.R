household_consumption <- read.table("./household_power_consumption.txt",sep = ";", na.strings ="?",stringsAsFactors = FALSE,skip = 1)
n <- household_consumption$V1 == "1/2/2007" | household_consumption$V1 == "2/2/2007"
temp <- subset(household_consumption,n)
png(filename = "Plot 1.png")
hist(temp$V3,col="red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()