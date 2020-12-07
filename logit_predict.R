df <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
str(df)
is.na(df)sum(is.na(df))
summary(df)
sapply(df, sd)
xtabs(~ admit +rank ,data=df)
df$rank <- as.factor(df$rank)
mylogit<- df[,c("admit","gre","gpa","rank")]
mylogit <- glm(admit ~ gre + gpa + rank, data =mylogit, family = "binomial")
summary(mylogit)

x <- data.frame(gre=790,gpa=3.8,rank=as.factor(1))
p<- predict(mylogit,x)
p
#We can use the confint function to obtain confidence intervals for the coefficient estimates. Note that for logistic models, confidence intervals are based on the profiled log-likelihood function.
confint(mylogit)

