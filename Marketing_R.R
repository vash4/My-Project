library("GGally")
library("datarium")
data("marketing")
head(marketing)
str(marketing)
View(marketing)
summary(marketing)
plot(marketing)
ggpairs(marketing)

#split the data into train and testing
set.seed(121)
pd <- sample(2,nrow(marketing),replace = T,
             prob =c(0.8,0.2))
train <- marketing[pd ==1,]
test <- marketing[pd ==2,]
summary(pd)
train
test


# Tree
library(rpart)
library(rpart.plot)
tree <- rpart(sales ~.,data = marketing)
summary(tree)
rpart.plot(tree)

# prediction
predict(tree,test)

# Decision tree rpart
tree1 <-rpart(sales ~youtube+facebook+newspaper,data = marketing)
rpart.plot(tree1)

# prediction
predict(tree1,test)

# misclassification error for train
pre <-predict(tree,train)
tab <- table(predict =pre,actual=train$youtube)
print(tab)
