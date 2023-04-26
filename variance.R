#PROGRAM 1
#load mtcars dataset
data(mtcars)

#perform anova on mpg by grouping the data by the number of cylinder
anova_result<-aov(mpg~cyl, data=mtcars)

#print anova summary
summary(anova_result)

#PROGRAM 2
# create dataframe
data_1<- data.frame(group=c(rep("A",5),rep("B",5),rep("C",5)),
                    value =c(10,12,15,18,20,8,10,12,14,16,5,8,10,12,14))

#perform anova
model<-aov(value~group,data=data_1)
summary(model)
