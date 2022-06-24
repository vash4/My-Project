# Open CV Programa =
library(opencv)
library(psych)
#library(Rvision)

# live face detection
ocv_video(ocv_face) # inbuild function
ocv_video(ocv_facemask)
ocv_video(ocv_mog2)
#ocv_video(ocv_blur)
#ocv_video(ocv_bbox)
#ocv_video(ocv_bitmap)
#ocv_video(ocv_chull)
#ocv_video(ocv_copyto)
#ocv_video(ocv_destroy)
#ocv_video(ocv_display)
#ocv_video(ocv_edges)
ocv_video(ocv_grayscale)
#ocv_video(ocv_hog)
#ocv_video(ocv_info)
#ocv_video(ocv_keypoints)
ocv_video(ocv_knn)
ocv_video(ocv_markers)
#ocv_video(ocv_picture)
#ocv_video(ocv_polygon)
#ocv_video(ocv_read)
#ocv_video(ocv_rectangle)
#ocv_video(ocv_resize)
ocv_video(ocv_sketch)
ocv_video(ocv_stylize)
#ocv_video(ocv_version)
#ocv_video(ocv_video)
#ocv_video(ocv_write)

#overlay face filterwith plot
test<-ocv_picture()
test
bitmap <-ocv_bitmap(test)
bitmap
width <-dim(bitmap)[2]
height <-dim(bitmap)[3]
#png ('bg.png',width = width,height = height)
data =("iris")
data
print(pairs.panels(iris[1:4],gap=0,pch=21,bg=c("red","green","blue")[iris$Species]))
dev.off()
bg <- ocv_read('bg.png')
ocv_video(function(input){
mask <- ocv_facemask(input)
ocv_copyto(input,bg,mask)})

#Face recognization
pic <- ocv_read("C:\\Users\\hp\\OneDrive\\Desktop\\1.jpg")
pic
#various option
ocv_sketch(pic,color=T)
ocv_bitmap(pic,ksize=15)
ocv_markers(pic)
ocv_stylize(pic)
fm <- ocv_facemask(pic)
fm

