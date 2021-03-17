#Load the Libraries
library(ggplot2)
library(RColorBrewer)
library(arules)
library(arulesViz)
library(dplyr)
library(plyr)
library(corrplot)

getwd()
setwd("C:\\Users\\hp\\OneDrive\\Desktop")
#Superstore <- readLines("https://bit.ly/3i4rbWl")
Superstore <- read.csv("C:\\Users\\hp\\OneDrive\\Desktop\\SampleSuperstore.csv ")
str(Superstore)
View(Superstore)

#Testing for missing values
missing<-sapply(Superstore , function(x) sum(is.na(x)))
missing

# Transactions per Segment
Segments <-aggregate(Superstore$Segment, by=list(Superstore$Segment), FUN=length)
colnames(Segments)<-c("Segment","count")
head(Segments)

# profit by city
profits <-aggregate(Superstore$Profit, by=list(Category=Superstore$City), FUN=sum)
colnames(profits)<-c("City","Profit")
head(profits)

##Number of orders from each city
city1<-aggregate(Superstore$Country, by=list(Superstore$City), FUN=length)
colnames(city1)<-c("City","Count")
head(city1)

#prefered shipping mode
shipmode <-Superstore[,5]
shipdata<-data.frame(Superstore$Segment,Superstore$Ship.Mode)
colnames(shipdata)<-c("Segment","shipmode")
head(shipdata)

#Number of times each type of shipmode was used by each customer
ship1<-c(shipdata,Segments,shipmode)
head(ship1)

#Dataframe of the Segment
ptable <-data.frame(c(Segments,profits$Profit,shipdata$shipmode))
head(ptable)

# City in less profit
c <- city1[order(c(city1$Count,decreasing = TRUE)),]
head(c)

#correlation 
cor(Superstore$Discount,Superstore$Profit ) 
ggplot(Superstore)+
  aes(x=Discount,y=Profit)+
  geom_point(colours = rainbow(10)+
               theme_minimal())
plot(Superstore$Discount,Superstore$Profit)
pairs(Superstore[,c(10,11,12,13)])               

# the city by frequency of transactions and profitability
profits <- ptable[order(c(ptable$Count,ptable$Profits.Profit,decreasing = TRUE)),]
head(profits)
