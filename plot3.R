File=file("household_power_consumption.txt")
df=read.csv.sql("household_power_consumption.txt",
                "select * from File where Date in ('2/1/2007', '2/2/2007')", 
                header=TRUE, sep= ";")
png(file = "plot3.png")

dftd <- paste(df$Date,df$Time,sep = " ")
dft <- strptime(dftd,format = "%m/%d/%Y %H:%M:%S")
with(df,plot(dft,Sub_metering_3,col="blue",type = "l",ylab = "Energy Sub Metering"))
with(df,lines(dft,Sub_metering_2,col="red",type = "l"))
with(df,lines(dft,Sub_metering_1,col="black",type ="l"))
legend("topright",lty = "solid" ,
               col = c("blue","red","black"),
       legend = c("Sub_metering1","Sub_metering2","Sub_metering3"))
dev.off()