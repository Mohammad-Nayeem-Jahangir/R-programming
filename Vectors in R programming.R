#Data Types
#Logical Data Types

var1<- TRUE
print(class(var1)) #Checking the type of var1, Logical Vector

var2 <- 3
print(class(var2))
is.vector(var2)#Checking var2 is vector or not [Output will show TRUE or FALSE]

var3<- 300L#Will include "L" as suffix after an integer value
print(var3)
print(class(var3))

var4<- 300.05L #Including "L" after a floating value will give you an error.
print(class(var4))

var5 <- 3+5i #Assigning complex value to var5
print(var5)
print(class(var5)) #Checking the type of var5

var6 <- charToRaw("Data Science") #Converting char to Raw data
print(var6)
print(class(var6))#Checking the class of var6


#CREATING A VECTOR using C function "C()"

subject <- c("EEE", "CSE","ME") #must be separated by comma
print(class(subject)) #Type: Character

subject <- c(34,45,56) #must be separated by comma
print(class(subject)) #Type: Numeric

subject <- c(1+2i,2+3i, 4+5i) #must be separated by comma
print(class(subject)) #Type: Complex

#Creating Sequence using colon:

v1<- 1:20 #Ascending order
print(v1)

v1<- 20:1 #Descending order
print(v1)

v1<- 20:1
print(v1)

#Creating Sequence using seq() function:
v2<- seq(1,20)
print(v2)

v2<- seq(30,1,by=-3)
print(v2)

#Sorting elements of a vector using sort() function:

v3<- c(2,3,5,3,5,7,8,9,4,10,5,8) #Created the vector using c() function and assigned to v3
sorted_value= sort(v3) #v3 passed through sort() function
print(sorted_value)


v4<- c("Mango", "Orange","Apple","Juice","Banana") #Created the vector using c() function and assigned to v3
sorted_value= sort(v4) #v3 passed through sort() function
print(sorted_value) #Sorted based on A-Z


#Vector Manipulation:Arithmetic Operation, Vector Element Recycling

v5<- c(2,4,6,8)
v6<- c(2,2,3,4)
Result1 <- v5+v6 #Addition within two vectors
Result2 <- v5-v6 #Subtraction within two vectors
Result3 <- v5*v6 #Multiplication
Result4 <- v5/v6 #Division
Result5<- v5%%v6 #Modulus

print(Result1)
print(Result2)
print(Result3)
print(Result4)
print(Result5)

#vector recycling
v7<- c(2,4) #In this case program will assume v7= c(2,4,2,4) to match with the dimension and will continue repeatetively.
Result6<- v5+v7
Result7<- v5-v7
Result8<- v5*v7
Result9<- v5/v7

print(Result6)
print(Result7)
print(Result8)
print(Result9)

#Accessing vector elements by index

v8<-c(2,4,6,7,8,9)
index1= v8[c(3)]
print(index1)

v8<-c(2,4,6,7,8,9)
index1= v8[c(5)]
print(index1)

v8<-c(2,4,6,7,8,9)
index1= v8[c(1)]
print(index1)

v8<-c(2,4,6,7,8,9)
index1= v8[c(-1)] #Dropping a value from the vector 
print(index1)

v8<-c(2,4,6,7,8,9)
index1= v8[c(-4)]
print(index1)
