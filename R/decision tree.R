#load rpart package
library(rpart)
#load the iris dataset
data(iris)
#create a decision tree model
model<-rpart(Species~ .,data=iris)
#plot the decision tree
plot(model)
text(model,use.n=TRUE,all=TRUE,cex=0.8)
