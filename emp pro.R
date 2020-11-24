# Create the data frame.
emp= data.frame(
  emp_No = c (1:6), 
  emp_Name = c("Rumman","Rambo","Atnyla","Ansari","Kulut","Hello"),
  salary = c(923.15,232.0,511.0,629.0,743.25,898.23), 
  
  start_date = as.Date(c("2018-01-01", "2017-09-23", "2017-11-15", "2015-05-11",
                         "2013-03-27","2018-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp) 
edit(emp$table)

#Add Column
# Add the "Post" coulmn.
emp$Post= c("System Engineer","Operations","IT","HR","Finance","IT")
print(emp)
#v = emp
#print(v)

# Create the second data frame
emp1 <- data.frame(
  emp_No = c (7:8), 
  emp_Name = c("Jaman","Inza"),
  salary = c(722.5,632.8), 
  start_date = as.Date(c("2013-07-30","2014-06-17")),
  stringsAsFactors = FALSE
)
# Bind the two data frames.
emp2 = rbind(emp,emp1)
#emp.finaldata = emp.finaldata$emp$emp.newdata
print(emp2)

# If there are more than 1 item, we can concatenate using paste()
 print(paste("How","are","you?"))
 
 # Create two vectors of different lengths.
 vector1 <- c(5,9,3)
 vector2 <- c(10,11,12,13,14,15)
 
 # Take these vectors as input to the array.
df= array(c(vector1,vector2),dim = c(3,3,2))
 print(df)
 
 # Use apply to calculate the sum of the rows across all the matrices.
 result = apply(df, c(1), sum)
 print(result)
 
#Functions can be passed as arguments to other functions. This is very handy for the various apply funtions, like lapply() and sapply()
 #Example 2: Creating a vector using seq() function
seq(1, 3, by=0.2)          # specify step size
seq(1, 5, length.out=4)    # specify length of the vector

#Operation on a list
theList <- list(A = matrix(1:9, nrow = 3), B = 1:5, c = matrix(1:2, nrow = 2), D = 2)
theList

# this will return a list
lapply(theList, sum) 

# this will return a vector
sapply(theList, sum) 

# another application

theNames <- c("Rumman", "Azam", "Master", "Inza")
lapply(theNames, nchar)

#Another Example
# create a first list
firstList <- list(A = matrix(1:16, nrow = 4),
                  B = matrix(1:16, nrow = 2),
                  C = 1:5)

secondList <- list(A = matrix(1:16, nrow = 4),
                   B = matrix(1:16, nrow = 8),
                   C = 1:15)

firstList
secondList
mapply(identical, firstList, secondList)


# create a nice function

simpleFun <- function(x,y)
{
  NROW(x) + NROW(y)
}

mapply(simpleFun, firstList, secondList)

# matrix exp
A = matrix( 
     c(2, 4, 3, 1, 5, 7), # the data elements 
     nrow=2,              # number of rows 
     ncol=3,              # number of columns 
    byrow = TRUE)        # fill matrix by rows 
print(A) 
A[2, 3]      # element at 2nd row, 3rd column 
A[2, ]       # the 2nd row 
A[ ,3] 
dimnames(A) = list( 
c("row1", "row2"),         # row names 
c("col1", "col2", "col3")) # column names 
print(A)
B = matrix(c(2, 4, 3, 1, 5, 7), nrow = 3, ncol=2) 
print(B)
a = matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
print(a)
#First check that column name and row names are exists or not by following command
colnames(a)
rownames(a)
#we will assign column names and row names of the matrix
colnames(a) = c("a","b")
rownames(a) = c("c","d")
colnames(a)
rownames(a)
#Combining Matrices
C = matrix( 
c(7, 4, 2), 
nrow=3, 
ncol=1) 
C             # C has 3 rows
cbind(B, C) 
#Matrix Addition & Subtraction
# Create two 2x3 matrices.
matrix1 = matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 = matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

# Add the matrices.
result = matrix1 + matrix2
cat("Result of addition","\n")
print(result)

# Subtract the matrices
result = matrix1 - matrix2
cat("Result of subtraction","\n")
print(result)
#Matrix Multiplication & Division
# Create two 2x3 matrices.
matrix1 = matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 = matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

# Multiply the matrices.
result = matrix1 * matrix2
cat("Result of multiplication","\n")
print(result)

# Divide the matrices
result <- matrix1 / matrix2
cat("Result of division","\n")
print(result)
# Create a vector as input.
df = c("East","West","East","North","North","East")
print(df)
print(is.factor(data))

# Apply the factor function.
factor_df <- factor(df)

print(factor_df)
print(is.factor(factor_df))
str(iris)
df=data.frame(Sepal.Length=iris$Sepal.Length, Sepal.Width= iris$Sepal.Width, Species= iris$Species)
df
df= iris[,c(1,2,5)]
df
df=iris[,-c(3,4)]
df
#the rnorm function generates a random sample from a normal distribution
df$df1 = c(rnorm(30,1,0.1),rnorm(30,1.3,0.1), rnorm(30,1.5,0.1),rnorm(30,1.8,0.1), rnorm(30,2,0.1))
df$df1
#Check the new data frame using the following commands
dim(df)
colnames(df)# get column names for the data frame df
#Use rbind as depicted:
df2 = data.frame(Sepal.Length=10.1, Sepal.Width=0.5, Petal.Length=2.5, Petal.Width=0.9, Species="myspecies")
df = rbind(iris, df2)
dim(df)
df[151,]
#Extract a part from the data frame, which meets certain conditions
df2.iris <- subset(df, Sepal.Length == 10.1)
df2
df2[1,] 

#  aggregate function load the data set
require(ggplot2)
data("diamonds")
head(diamonds) 
str(diamonds)
# we can perform mean function on the dataset like below
mean(diamonds$price)
# calculate the mean price based on cut
aggregate(price ~ cut, diamonds, mean)
aggregate(price ~ cut, diamonds, mean, na.rm = TRUE)
# calculate the mean price based on cut and color
aggregate(price ~ cut + color, diamonds, mean)
# calculate the mean price and carat based on cut
aggregate(cbind(price, carat) ~ cut, diamonds, mean)
# calculate the mean price and carat based on cut and color
aggregate(cbind(price, carat) ~ cut + color, diamonds, mean)  
hist(diamonds$carat)
hist(diamonds$carat, main="Carat Histogram", xlab = "Carat")
plot(diamonds$carat , diamonds$price)
plot(price ~ carat, data = diamonds)
plot(price ~ carat, data = diamonds, main = "Price vs Carat")
boxplot(diamonds$carat)
ggplot(data = diamonds) + geom_histogram( aes(x = carat) ) 

#Data Reshaping 
# Create vector objects.
city <- c("Burdwan","Bankura","Darjeeling","Kolkata")
state <- c("WB","WB","WB","WB")
zipcode <- c(713101,722101,734101,700001)

# Combine above three vectors into one data frame.
addresses = cbind(city,state,zipcode)

# Print a header.
cat("# # # # The First data frame\n") 

# Print the data frame.
print(addresses)

# Create another data frame with similar columns
new.address <- data.frame(
  city = c("Nadia","Malda"),
  state = c("WB","WB"),
  zipcode = c("712147","732101"),
  stringsAsFactors = FALSE
)

# Print a header.
cat("# # # The Second data frame\n") 

# Print the data frame.
print(new.address)

# Combine rows form both the data frames.
all.addresses <- rbind(addresses,new.address)

# Print a header.
cat("# # # The combined data frame\n") 

# Print the result.
print(all.addresses)

