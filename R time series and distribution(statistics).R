x<-c(11,22,33,44,55,66,77,88,99)
mean(x)
var(x)
sd(x)
quantile(x)
length(x)
summary(x)
#normal distribuatiion 
y=dnorm(x,mean = mean(x),sd=sd(x))
y
plot(x,y)

#### pnorm : probability of a normally distributed random number 

x<-c(12,34,56,78,89,10)
#probablity distribuatiion 
y=pnorm(x,mean = mean(x),sd=sd(x))
plot(x,y)


##qnorm 
x<-c(.1,.2,.3,.4,.5,.6,.7,.8,.9,.0)
y=qnorm(x,mean =4,sd=2)
y
plot(x,y)

##time series
#timestamp: yearly, monthly, quarterly, hourly, per min, per sec
stock<-c(122,121,231,321,432,234,543,345,654,456,876,789)
         #2020jan 2020feb ...
stock
res <-ts(stock,start = c(2019,1),frequency=12)
res
plot(res)


