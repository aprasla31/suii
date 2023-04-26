mydata<-mtcars
names<- (mydata)
dim(mydata)

#

mydata<-mydata[sample(nrow(mydata),),]
head(mydata)
TrainData<-mydata[1:20,]
TestData<-mydata[21:32,]

# Linear model

fit =lm(mpg ~ hp, data=mtcars)
summary(fit)
preds<-predict(fit,newdata = TestData)
df1<-data.frame(preds,TestData$mpg)
head(df1)

#correction

cor(preds,TestData$mpg)
ggplot(fit,aes(hp,mpg))+geom_point()+stat_smooth(method = lm, se=FALSE)
+geom_segment(aes(xend=hp,yend=.fitted),color='red',size=0.3)



#logistic regression

lmmodel<- lm(mpg ~ hp+cyl+gear+wt, data =TrainData)
summary(lmmodel)

preds_new <-predict(lmmodel,newdata = TestData)
df2<-data.frame(preds_new,TestData$mpg)
head(df2)

plot(mtcars$hp+mtcars$cyl+mtcars$gear+mtcars$wt,mtcars$mpg)

ggplot(fit,aes(mtcars$hp+mtcars$cyl+mtcars$gear+mtcars$wt,mtcars$mpg))+geom_point()
+stat_smooth(method = lm, se=FALSE)+geom_segment(aes(xend=hp,yend=.fitted),
                                                 color='red',size=0.3)
