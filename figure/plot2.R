household_consumption <- read.table("./household_power_consumption.txt",sep = ";", na.strings ="?",stringsAsFactors = FALSE,skip = 1)
n <- household_consumption$V1 == "1/2/2007" | household_consumption$V1 == "2/2/2007"
temp <- subset(household_consumption,n)
temp$V10 <- strptime(paste(temp$V1,temp$V2),format = "%d/%m/%Y %H:%M:%S")
png(filename = "Plot 2.png")
plot(temp$V10,temp$V3,'l',ylab = "Global Active Power(kilowatts)",xlab = "")
dev.off()