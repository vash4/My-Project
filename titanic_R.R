setwd("C:\\Users\\hp\\OneDrive\\Desktop\\R_dataset")
library("readxl")
df=read_excel(file.choose())
df
titanic1 <- read_excel("R_dataset/titanic1.xls")
View(titanic1)
df=read_excel("C:\\Users\\hp\\OneDrive\\Desktop\\R_dataset\\titanic1.xlsx",sheet='titanic')
df=read_excel("titanic1.xls",sheet="titanic")

#print(titanic)
head(titanic1)
colSums(is.na(titanic1))
titanic1$table=edit(titanic1)
titanic1$Survived
is.na(titanic1)
#sum(is.na(titanic$x1))
colSums(is.na(titanic1))
#colSums(is.na(Cabin))
sum(is.na(titanic1))
na.omit(titanic1)
mean(titanic1$Age,na.rm = TRUE)
which(is.na(titanic1))
df$titanic1
#summary(Age)
#titanic[is.na(titanic)=0]
dim(titanic1_drop)
str(titanic1)
summary(titanic1)
df=as.numeric(titanic1$Survived)
df
df=as.numeric(titanic1$Age)
df
df$table=edit(df)
sum(Pclass)
plot(Survived,Age,main="scatterplot")
cor(Survived,Age)
mod=lm(Survived~Age)
summary(mod)
mod$coefficients
attributes(mod)
coef(mod)
abline(mod)
abline(mod,col=2,lwd=3)
confint(mod)
plot(mod)

