#PROGRAM 1
sample_data<- c(2,3,4,5,6,7,8,9)

#one sample t_test
a<-t.test(sample_data,mu=5)
print(a)

#PROGRAM 2
#sample_data
group_1<-c(2,3,4,5,6)
group_2<-c(7,8,9,10,11)

#two sample t_test
b<- t.test(group_1,group_2)
print(b)

#PROGRAM 3
#Generate 3 sets of data
x <- rnorm(50, mean = 10, sd = 2) 
y <- rnorm(50, mean = 12, sd = 2) 
z <- rnorm(50, mean = 14, sd = 2)

# Combine the data into a single dataframe 
df <- data.frame(value = c(x, y, z), group = rep(c("X", "Y", "Z"), each = 50)) 

# Perform a one-way ANOVA
model <- lm(value ~ group, data = df)
anova(model)

