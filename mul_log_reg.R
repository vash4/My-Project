library(caTools)
getwd()
#setwd("C:\\Users\\hp\\OneDrive\\Desktop\\R_dataset")
df <- read.csv("C:\\Users\\hp\\OneDrive\\Desktop\\R_dataset\\Air_passengers.csv")
#df <-read.csv(file.choose(),header = T)
head(df)
View(df)
str(df)
table(df$DOMESTIC)

df$Year <-as.factor(df$Year)
df$TOTAL <-as.factor(df$TOTAL)

# Data Partition
set.seed(222)
par <-sample(2,nrow(df),replace = TRUE,prob = c(0.8,0.2))
train <- df[par==1,]
test <-df[par==2,]
#train
test
#logistic Regression
mod<- glm(Year ~ .,data =train ,family = 'binomial')
summary(mod)
termplot(mod)
pre <-predict(mod,train,type = 'response')
#head(pre)
#head(train)

# misclassification error-train
p1<- ifelse(pre > 0.7, 1,0)
p1
table(predicted = p1,Actual = train$TOTAL)#confusion matrix
