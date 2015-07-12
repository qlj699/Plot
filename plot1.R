## File=file("household_power_consumption.txt")
## df=read.csv.sql("household_power_consumption.txt","select * from File where Date in ('2/1/2007', '2/2/2007')", header=TRUE, sep= ";")
png(file = "plot1.png")
par(lab = c(4,7,1),mar = c(4,4,2,2))
with(df,hist(Global_active_power,xlab = "Global Active Power(kilowatts)",
             breaks = 12, col = "red", main = "Global Active Power",
             xlim = c(0,6),ylim = c(0,1200)))
dev.off()
