library(DAAG)
library(ggplot2)

data("roller")
str(roller)
plot(depression ~ weight,roller)
mod <-lm(depression ~ weight,roller)
summary(mod)
abline(mod,col ='blue')
residuals(mod)

#scatter plot
ggplot(roller,aes(x=weight,y=depression))+
  geom_point()
geom_smooth(method = 'lm')+

#diagnostic
  
par(mfow=c(2,2))
plot(mod)
par()mfow=c(1,1))

anova(mod)# analysis of variance table

#prediction
predict(mod,data.frame(weight=c(6,8,9)),interval = 'confidence')



