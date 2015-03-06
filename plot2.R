#exploratory data analysis, course project 1 on 150308
#plot2

data<-read.csv("./data/150304_pro1_data_part.txt",sep=";")
head(data)
data_sub<-subset(data,data[,1]=="1/2/2007" | data[,1]=="2/2/2007")

png(file="plot2.png")
plot(data_sub[,3],type="l",xaxt="n",xlab="",ylab="Global Active Power (kilowatts)",main="")
axis(1,at=c(0,1441,2880),labels=c("Thu","Fri","Sat"))
dev.off()