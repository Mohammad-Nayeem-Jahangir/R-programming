### EDA: Exploratory Data Analytics ###

getwd() #Shows the "Working Directory" of the current running folder.
setwd("/Users/mnjnayeem/Documents/PGD/Class 3") #For setting working directory, paste the file path inside the bracket

#LOADING A DATA FILE (Plants)

read.csv("plants.csv")

plants <- read.csv("plants.csv") #Included CSV file as a data frame.

plants
class(plants)#Checking the type of "plants" veriable

dim (plants) #Checking dimensions
names (plants) #Checking the columns
nrow(plants) #Checking number of rows
ncol(plants) #Checking number of columns

head(plants) #Top 6 rows will show up
tail(plants) #Bottom 6 rows will show up

summary(plants) #Will summarize the data set

#View(plants) 
#To view the dataset

#LOADING A DATA FILE (CARS)

read.csv("cars.csv")
cars <- read.csv("cars.csv")
cars
dim (cars)
names(cars)
nrow(cars)
ncol(cars)

summary(cars)

#View(cars)

#LOADING an Excel File

library(readxl)
read_excel("plants.xls") 
Plantxl <- read_excel("plants.xls") #Assigning the velue in a veriable
Plantxl
dim(Plantxl) #Checking dimension
ncol(Plantxl) #Checking number of Column in Plantxl
nrow(Plantxl)#Checking number of rows in Plantxl
summary(Plantxl) #Checking summary of Plantxl

#View(Plantxl)


###SCATTER PLOT###
x<- cars$speed #Assigned a  veriable for the speeds of the cars
y<- cars$dist #Assigned another veriable for the distance of the cars
x
y

plot(x,y,pch=15,col="purple") #pch= Pixel character, col denotes the color

plot(cars) #Ploting the cars file

str(cars)
hist(cars$speed,col="black", breaks=17) #Plotting histogram cars speed
hist(cars$dist,col="red", breaks= 20) #Plotting histogram cars distance


#DPLYR PACKAGE

library(dplyr)

#Note: If library do not appear please use install.packages("dplyr).

read.csv("2014-07-08.csv")
df1 <- read.csv("2014-07-08.csv")
df1
head(df1)
summary(df1)

dim(df1)

select(df1,ip_id,package,country) #To see some specific column
#View(df1)

select(df1,r_arch) #To view some of the specific columns i.e. only r_arch column have been printed.

select(df1,ip_id) #ip_id column have been printed.

#Note: select function works on column & filter function used on row.

filter(df1,country =="US")
X1<- select(df1,r_arch:ip_id)
X1

#filter(X1,country=="CN") #Filtered the values from r_arch column to ip_id column for the country CN.
filter(X1,country=="CN" | country=="US")
filter(df1,country=="CN" | country=="US",package=="ggplot2")

filter(df1,country=="CN" | country=="US",package=="ggplot2", size>100500)
S1=filter(df1,country=="CN" | country=="US",package=="ggplot2", size>100500)

arrange(df1,size) #By default R language arrange sizes by ascending order.
arrange(df1,desc(size)) #Arranged by s=descending order

mutate(S1,SizeKB=size/1024) #Creating/changing a column

group_by(df1,package) #Group by function to group

#PIPE OPERATOR (%>%)

Var1 <-select(df1,size:ip_id) #Section1: included in a variable from size to ip_id column of df1
Var1
Var2 <- filter(Var1, country=="US") #Section2:Filter them based on US
dim(Var2)

mutate(Var2, sizeKB=size/1024) #Section3: Include an additional column of SizeKb

#Now let's do everything in a single line

df1 %>% select(size:ip_id)%>%filter(country=="US")%>%mutate(sizeKB= size/1024)

