library(RMySQL) 
mydb = dbConnect(MySQL(), user='root',password='root', dbname='school',host='localhost')
#you may need to change password and dbname name 

#show list of tables
dbListTables(mydb)
q
dbListTables(mydb,"school")
rs=dbSendQuery(mydb,"select * from school;")
fetch(rs,n=-2)
fetch(rs,n=2)

library(RMySQL)
mydb=dbConnect(MySQL(),user='root',password='root',dbname='school',host='localhost')
rs=dbSendQuery(mydb,"select * from school;")
df=fetch(rs,n=-1)
print(df)
str(df)
view(df)
head(df)
com_df=subset(df,name=='sun')
com_df
df=data.frame()
df=data.frame(
  Doubles = double(),
  Ints = integer(),
  Factors = factor(),
  Logicals =logical()
)
str(df)
df
df$name
df$class
df$section
str(df)
df[order(df$name),]
df[order(df$class),]
df[order(df$section),]

df[-order(df$name),]
df[order(df$class),]
df[-order(df$section),]
name=df$name

sort(name,decreasing = FALSE,na.last = TRUE)
sort(name,decreasing = TRUE,na.last=TRUE)
