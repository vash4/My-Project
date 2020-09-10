x=18
y=4
z=x+y
z=x-y
z=x*y
z=x/y
z=x**y
z=x^y
print(z)

x=10
mode(x)

#keyword
x=10L
x=TRUE
x='sun'
x="sun"
is.character(x)
print(x)

# assignment operator
x=10
print(x)
y=20
print(y)
assign('z',30)
print(z)

50-> w
print(w) 

#predifineconstant
x=pi
print(x)

x=letters
print(x)

x=LETTERS
print(x)

x=months
print(x)

x=month.abb
print(x)

# R sequence number
x=1:10
print(x)

x=10:1
print(x)

x=1:10*2
print(x)

x=5
print(x)
1:x
1:(x-1)

x=seq(1,5)
print(x)

x=seq(5)
print(x)

x=seq(from=1,to=5)
print(x)

x=seq(1,10,2)
print(x)

x=seq(1,10, by=2)
print(x)

x=seq(1,10,length=4)
print(x)

x=1:5*2 # even no
print(x)

x=seq(1,10,2)# odd no
print(x)

#R-replicate
x=rep(1,times=5)
print(x)

x=rep('z',times=3)
print(x)

x=1:3
y=rep(x,times=5)
print(y)

# structure
x=5
if(x >= 0){
  print('positive no')
}else{
print('negative no')
}
x=-2  
if(x>=0){
  print('positive')
}else{
  print('negative')
}
# print('end of program')
x=3
if(x>=0){
  print('positive')
}else{
print('negative no')
}

x=0
x=3
x=-3
# if(x>=0){
#  print('positive') 
# }else if(x==0){
# print('zero')
#   }else if(x<0){
#     print('negative')
# }
# if else
# x=5
# ifelse(x>=0){
# print('positive')
# }
# ifelse(x<-4){
#   print('negative')
# }

# even & odd
x=6
ifelse(x%%2==0,'even','odd')
print(x)
# for loop
for(i in 1:5){
  print(i)
}

x=1:10
for(i in x){
  print(i)
}

x=letters
for(i in x){
  print(i)
}

x=letters
y=x(1:5)
for(i in y){
  print(i)
}

#while loop
i=1
while (i<=5){
  print(i)
  i=i+1
}

#repeat loop
i=1
repeat{
  print(i)
  if(i>=5){
    break
    i=i+1
  }
}
#function
mysum=function(x,y){
z=x+y
return(z)
}
mysum(12,45)

mysum=function(x,y,w){
  z=x+y+w
  return(z)
  mysum(4,5,7)
}

mysum=fumction(x=2,y=3,w=6){
  z=x+y+z
  retunrn(z)
}
mysum()

myeval=function(x,y){
w=x+y
z=x*y
result=list('sum'=w,'mul'=z)
return(result)}
myeval(2,7)

#vector
x=10
typeof(x)
x=10.5
print(typeof(x))

x=c(10,20,30,40)
print(x)
assign('x',c(50,60,70))
print(assign())

x=c('T','T','F','T')
print(x)
class(x)
z=1:6
print(z)
z=seq(1,6)
print(z)
z=seq(1,6,2)
print(z)

z=rep(10,time=3)
print(z)

x=c(10,20,30)
y=c(3.5,4.5,6.5)
z=c(x,y)
z=y=x=c(1.25,5,4)
print(z)
print(y)
print(x)

x=vector('numeric',length = 4)
print(x)

x=vector()
print(x)

x=c(10.5,3.25,56.5)
print(x)
length(x)

#assign vector in index
x=c(10,20,30,35,45,80)
print(x[1])
print(x[-2])
print(x[3:7])
print(x[c(1,3,4)])

x[2]=-7
print(x)

x=c(10,45,30,50,35,40,80)
y=c('T','F','T','T','F','T','F')
print(x[y])

x=c(10,20,30,40,50,60,70,80)
for(i in 1:7)
  print(x[i])

for(i in 1:10)
  print(x[i])

x=c(10,20,30,40,50,60,70,80)
for(i in seq_along(x)){
  print(x[i])
}

for(i in x)
  print(i)

#matching operator
x=c(10,45,35,50,40,60)
35% in %x
print(x)

y=c(30,37,45)
y% in %x

#Arithmetic operator
x=c(10,45,30,50)
print(x)
print(x+2)
print(x*10)
print(x/5)
sqrt(x)

#vector method
x=c(10,45,30,50)
print(sum(x))
rev(x)
sort(x)
sort(x,decending=TRUE)

x%%y
crossprod(x,y)
x%0%y

#vector conversion
x=c(10,'john',10,30.45)
print(x)
x=0:5
print(x)
class(x)
as.logical(x)
as.character(x)

#logical operator
x=c(10,20,30,40,35)
print(x)
y=x>30
print(y)
y=x>30 & x<40
print(y)

#factorial
x=c('m','f','m','m','f')
print(x)
table(x)

#mathmeticfunction in R

x=c(4.258,-3,83,5.457,7.504)
print(abs(x))
ceiling(x)
floor(x)
round(x)
trunc(x)

x=c(16,36,30,81,25)
print(sqrt(x))
exp(x)
log(x)
log2(x)

x=c(4,3,6)
factorial(x)

#random number in R
x=rnorm(10)
        print(x)
x=rnorm(10,mean=20,sd=1)

#matrix in R
m=matrix(c(nrow=2,col=3))
print(m)
dim(m)

m=matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)
print(m)

m=c(1,2,3,4,5)
print(m)
dim(m)=c(2,3,7,8,9)
print(m)

m=matrix(1:6)
print(m)

m=matrix(c(2,3,4,5,6,0-1,-2,-3,5,4,3),nrow=4,ncol=3,byrow=TRUE)
print(m)
dim(m)
nrow(m)
ncol(m)
length(m)

m=matrix(1:6,nrow=2,ncol=3,byrow=TRUE)
print(m)

#diagonal matrix
m=matrix(4,3,3)
print(m)

m=diag(1,2,3)
print(m)

m=diag(1,3,3)
print(m)

m=diag(5,3,3)
print(m)

m=diag(1,3,3)
m=diag(1:3)
diag(3)

#Row and column matrix
m=matrix(c(2,3,4,0,1,-3,nrow=3,ncol=3,byrow=TRUE))
print(m)
rownames(m)=c(1,2,3)
colnames(m)=c('a','b','c')
print(m)

#assessing element using matrix
a=matrix(c(2,3,4,6,0,-1,-2,5,6,-3),nrow=4,ncol=3,byrow=TRUE)
print(a)
a[1,2]
print[,2]
print(a[,-1])
a[2,3]
print(a)
a[1:3,1:2]
a[1:3,-2]
a[-3,2:3]
a[c(1,3)]
a[,c(1,3)]
a=a[,-2]
a=a[-3]
a=a[-3,-1]
diag(a)

#Rbind & cbind
a=matrix(c(2,3,4,0,1,2,-1,-2,2),nrow=3,ncol=3,byrow=TRUE)
print(a)
b=rbind(a,c(10,11,12))
print(b)
b=matrix(c(10,11,12),nrow=1,ncol=3,byrow=TRUE)
c=rbind(a,b)
print(c)

b=matrix(c(10,11,12),nrow=3,ncol = 1,byrow = TRUE)
c=cbind(a,b)
print(c)
b=matrix(c(10,11,12,13),nrow=1,ncol = 4,byrow=TRUE)
c=cbind(a,b)
print(c)

#operation matrix
a=matrix(c(11,22,33,44,55,66,77),nrow=3,ncol = 3,byrow = TRUE)
b=matrix(c(10,20,30,40,40,50,60,70),nrow = 3,ncol = 3,byrow=TRUE)
print(a)
print(b)
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%%b)
print(t(a))
print(solve(a))

# specific matrix function
a=matrix(c(1:9,3,3))
print(a)
rowSums(a)
colSums(a)
rowMeans(a)
colMeans(a)
apply(a,1,sum)
apply(a,2,sum)

#list
x=list(10,'sun',TRUE)
print(x)

rollno=c(101,102,103)
sname=c('sun','mon','tue')
marks=c(78.5,60,63.85)
student=list(rollno,sname,marks)
print(student)

stu=list(c(101,102),c('dob'),c(78.5,60,63.85))
print(stu)
print(student)

#list indexing
rollno=c(101,102,103)
sname=c('moon','saturn','venus')
marks=c(70,59.45,63.85)
stud=list(rollno,sname,marks)
print(stud)
print(stud[1])
print(stud[[1]])
print(stud[[1]][2])
print(stud[[1]][2]->108)

#list concatinate
rollno=c(101,102,103)
sname=c('sun','mon','tue')
marks=c(78.5,60,63.85)
student=list(rollno,sname,marks)
print(student)
age=list(c(10,20,22))
student=c(student,age)
print(student)

#data frame
id=c(101,102,103)
name=c('jupiter','mercury','mars')
marks=c(70,80,90)
stu=data.frame(id,name,marks)
print(stu)
slist=list(id,name,marks)
print(slist)

#data frame indexing access
id=c(101,102,103)
name=c('jupiter','mercury','mars')
marks=c(70,80,90)
stu=data.frame(id,name,marks)
print(stu)
stu[2,]
stu[2:3]
stu[,1]
stu[2:3,1:2]
stu[-2,-3]
stu[2]
stu$name
stu$name[3]
stu[[3]][2]

#subset function in dataframe
id=c(101,102,103)
name=c('jupiter','mercury','mars')
marks=c(70,80,90)
stu=data.frame(id,name,marks)
print(stu)
r=subset(stu,marks>60)
print(r)
r=subset(stu,marks>60 & id<103)
print(r)
r=subset(stu,marks>60,select=c(name,marks))
print(r)
r=subset(stu,marks>60,select=-name)
print(r)

#dataframe rbind and cbind
id=c(101,102,103)
name=c('jupiter','mercury','mars')
marks=c(70,80,90)
stu=data.frame(id,name,marks)
print(stu)
stu=rbind(stu,data.frame(id=104,name='moon',marks=90))
print(stu)
stu=cbind(stu,data.frame(age=18,24,19))
print(stu)

#dataframe edit()function
id=c(101,102,103)
name=c('jupiter','mercury','mars')
marks=c(70,80,90)
stu=data.frame(id,name,marks)
print(stu)
stutable=edit(stu)
print(stu)

#missing value in dataframe
x=c(10,4,NA,T,15)
print(x)
is.na(x)
is.nan(x)
y=is.na(x)
print(y)
x[!y]

#create dataframe
id=c(101,102,103,104)
temp=c(25.8,34.2,NA,27.4)
wind=c(78,59,63,40)
humidity=c(25,45,NA,61)
weather=data.frame(id,temp, wind,humidity)
print(weather)
weatherNA=complete.cases(weather)
print(weatherNA)
weather[weatherNA,]
