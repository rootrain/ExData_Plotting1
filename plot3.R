#exploratory data analysis, course project 1 on 150308
#plot3

data<-read.csv("./data/150304_pro1_data_part.txt",sep=";")
head(data)
data_sub<-subset(data,data[,1]=="1/2/2007" | data[,1]=="2/2/2007")

png(file="plot3.png")
plot(data_sub[,7],type="n",xlab="",ylab="Energy sub metering",xaxt="n")
lines(data_sub[,7],col="black")
lines(data_sub[,8],col="red")
lines(data_sub[,9],col="blue")
axis(1,at=c(0,1441,2880),labels=c("Thu","Fri","Sat"))
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1))
dev.off()