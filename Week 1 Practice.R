x <- c(4, 8, 23, 2, 16, 7)
or
x = c(4, 8, 23, 2, 16, 7)
mean(x) # arithmetic mean
median(x) # middle value
length(x) # number of elements in a vector or list
range(x) # largest and smallest value
sd(x) # standard deviation
var(x) # variance

?max
summary(x)

pulse <- c(120, 134, 152)
exercise_level <- c("light", "intense", "intense")
time_in_mins <- c(30, 20, 20)
exercise_dataframe <- data.frame(pulse, exercise_level, time_in_mins)
print(exercise_dataframe)

summary(exercise_dataframe)

exercise_dataframe$exercise_level <-
  as.factor(exercise_dataframe$exercise_level)

summary(exercise_dataframe)

exercise_dataframe[1,3]
exercise_dataframe[,1]
exercise_dataframe$time_in_mins
exercise_dataframe$exercise_level

exercise_dataframe[1:2,2:3]

exercise_dataframe[,-3]

exercise_dataframe$pulse > 130

exercise_dataframe[exercise_dataframe$pulse > 130,]

completed_training <- c(1, 0, 1)
exercise_dataframe[completed_training==1,]

data()

cars
irish
summary(cars)
plot(cars)
hist(cars$speed)
hist(cars$dist)
plot(density(cars$speed))
plot(density(cars$dist))

Thai_tourist <- read.csv("Thaitourism1.csv", header= TRUE) 
names(Thai_tourist) 
head(Thai_tourist) 
tail(Thai_tourist) 
str(Thai_tourist)
summary(Thai_tourist)

head(Thai_tourist, 20) #first 20 rows

Thai_tourist_full <- read.csv("Thaitourism2.csv", header= TRUE)
names(Thai_tourist_full) 
head(Thai_tourist_full) 
tail(Thai_tourist_full) 
str(Thai_tourist_full)
summary(Thai_tourist_full)

Thai_2016<-Thai_tourist[Thai_tourist$Year==2016,]
Thai_2016

Thai_UK<-Thai_tourist_full[Thai_tourist_full$nationality=="UnitedKingdom",]
Thai_UK

barplot(Thai_2016$Tourists_1000s)

barplot(Thai_2016$Tourists_1000s,names.arg=Thai_2016$Region)

barplot(Thai_2016$Tourists_1000s,names.arg=Thai_2016$Region,horiz= TRUE)

barplot(Thai_2016$Tourists_1000s,names.arg=Thai_2016$Region,col=c("red","blue"))

barplot(Thai_2016$Tourists_1000s,names.arg=Thai_2016$Region,col=rainbow(8))
hist(Thai_UK$tourists)
hist(Thai_UK$tourists,breaks=16)
hist(Thai_UK$tourists,freq=FALSE)


hist(Thai_UK$tourists, labels = TRUE)
hist(Thai_UK$tourists, xlab="No. of UK Tourists per month",col=rainbow(8))

