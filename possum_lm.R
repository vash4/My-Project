library(DAAG)
library(MASS)
library(dplyr)
library(ggplot2)
library(ggExtra)
library(corrplot)
library(psych)
data("possum")
str(possum)
df <- possum %>% select(1:3,9)
df

#filter
possum %>% filter(sex=='f')

# Arrange
possum %>% filter(sex=='f')%>%
arrange(desc(belly))

#Summarize 
possum %>% filter(sex=='f')%>%
summarise(Avg=mean(belly,s=sd(belly),count=n()))
          
#group by  
possum %>% filter(sex=='f') %>% 
group_by(site)%>%
summarise(Avg=mean(belly),s=sd(belly),count=n())%>% 
arrange(desc(site))  

# Histrogram
possum %>% ggplot(aes(),(x=totlngth)+ 
                  geom_histogram()+
                  ggtitle('distribution of total length'))
# scatter Plot
possum %>% ggplot(aes(),(x=tail)+
                 geom_point(color='blue')+
                 geom_smooth(se=0,method =lm))
# Bar plot
possum %>% ggplot(aes(x=interaction(sex,site),y=chest,
                      col='red'))
            geom_boxplot()
          