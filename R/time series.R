data("AirPassengers") # using inbuilt dataset
class(AirPassengers) # understand the format of data # ts means time serires data
start(AirPassengers) #to know the start time of time series
end(AirPassengers) # to know the end time of time series
frequency(AirPassengers) #to know the frequency of the dataset #12 means data is on monthly basis
summary(AirPassengers)# to know the mean median of the dataset
plot(AirPassengers) #plot the timeseries data
#plot the best fit line which can be used for regression
abline(reg = lm(AirPassengers ~ time(AirPassengers)))
#to print the cycle across years
cycle(AirPassengers)
#to aggregate the cycle and display the trend as per years
plot(aggregate(AirPassengers,FUN = mean))
#to get the boxplot
boxplot(AirPassengers  ~ cycle(AirPassengers))

# Program 2 - Time series with our data
#predictor vector
x<-c(5.1,5.5,5.8,6.1,6.4,6.7,6.4,6.1,5.10,5.7)
#response vector
y<-c(63,66,69,72,75,78,75,72,69,66)
#response vector 
y<-c(63,66,69,72,75,78,75,72,69,66)
#apply lm()function
relation<-lm(y~x)
summary(relation)
#find weight of a person with height
a<-data.frame(x=6.3)
result<-predict(relation,a)
print(result)

# Program 3 - Timeseries with our data
#creating time series
sales<-c(435735,465404,474742,477841,501775,503578,521750,562246,572453,592955,607816,614864,656448,658781,690422,708860)
#yearly time series
sales_ts<-ts(sales,start=2000,end=2015,frequency=1)
#quaterly time series
sales_ts<-ts(sales,start=2000,end=2015,frequency = 4)
#monthly time series
sales_ts<-ts(sales,start=2000,end=2015,frequency = 12)
#ploting time series
plot.ts(sales_ts)
