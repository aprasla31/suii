library(XLConnect)
library(readxl)
library(writexl)
dataT<-read.table("mydata.csv",sep=",",header=T)
dataT
dim(dataT)
dataT<-read.table("missing_column.csv",sep=",",header=T)
dataT
dim(dataT)
head(dataT,5)
tail(dataT,5)

z<- data.frame(a=5,b=10,c=16)
write.csv(z,file="data.csv")

mydata<-mtcars
mydata
mydata1<-mydata[1:6,1:5]
mydata1
mydata1<-rename(mydata1,horsepower=hp)
mydata1
mydata1$newhp1<-mydata1$horsepower*0.5
colnames(mydata1)
mydata1

data2<-readtable("missing_column.csv",sep=",")
data2
data2=read.csv("missing_column.csv",col.names=c("Names","Salary","Date of joining","Department"), sep=",")
data2

x<-c(1,2,3,NA,4)
x
median(x)
nVals<- is.na(x)
nVals
x[!nVals]

data3<-read.csv("missing_column.csv",na.strings=",")
data3
dataCompleteCases<-data3[complete.cases(data3),]
dataCompleteCases

x<- c(1,2,3,NA,4,4,NA)
x<-impute(x,fun=mean)
x
x<-impute(x,fun=median)
x