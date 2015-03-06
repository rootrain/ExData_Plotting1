#exploratory data analysis, course project 1 on 150308
#plot1
data<-read.csv("./data/150304_pro1_data_part.txt",sep=";")
head(data)
data_sub<-subset(data,data[,1]=="1/2/2007" | data[,1]=="2/2/2007")

png(file="plot1.png")
hist(data_sub[,3],main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()