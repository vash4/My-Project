df <- data.frame(x=1:6,y=10.5)
df
library(ggplot2)
library(patchwork)
library(png)

ggp <-ggplot(df,aes(x,y))+
  geom_point()
ggp

img <-readPNG("C:\\Users\\hp\\Documents\\photo\\image11.png ",native=TRUE)
str(img)

ggp_img <- ggp+ 
   inset_element(p = img,left =0.3,bottom = 0.55,right = 0.95,top =0.95)
ggp_img

