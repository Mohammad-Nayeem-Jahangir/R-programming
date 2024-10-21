##Task 3##
----------------------------------------------
#Set the working directory 
setwd("/Users/mnjnayeem/Documents/PGD/Assignment")
#Checked the working director
getwd()
#Loaded the dataset
read.csv("Titanic-Dataset.csv")
#Assigned a variable to keep the dataset
DS_Titanic <- read.csv("Titanic-Dataset.csv")
DS_Titanic
#Dimension of the Titanic Data set
dim(DS_Titanic)

#Number of Row of the Titanic Data set
nrow(DS_Titanic)

#Number of Column of the Titanic Data set
ncol(DS_Titanic)

#First few rows of Titanic Datset
head(DS_Titanic)

#First few rows of Pclass
head(DS_Titanic$Pclass)

#Last few rows of Titanic Datset
tail(DS_Titanic)

#Last few rows of Pclass
tail(DS_Titanic$Pclass)

#Summary of Titanic Dataset
summary(DS_Titanic)

#Summary of Pclass
summary(DS_Titanic$Pclass)


#Structure of Pclass
str(DS_Titanic$Pclass)

#Display the names of the colums of the Titanic Dataset
names(DS_Titanic)

# Frequency table for the Pclass column
table(DS_Titanic$Pclass)

#Unique values of the sex column
Unique_Titanic <- unique(DS_Titanic$Sex)
Unique_Titanic



##TASK 4##
---------------------------------------
#Missing values in the datset
Missing_Value_Sum <- sum(is.na(DS_Titanic))
Missing_Value_Sum

#Missing values in the age column
Missing_ValueSum_Age <-sum(is.na(DS_Titanic$Age))
Missing_ValueSum_Age

#Missing value replace with mean
if (Missing_ValueSum_Age>0) {
  Mean_Age <- mean(DS_Titanic$Age,na.rm = TRUE)
  DS_Titanic$Age[is.na(DS_Titanic$Age)] <- Mean_Age
}

DS_Titanic$Age

head(DS_Titanic$Age)


#Task 5##
-------------------------------------
install.packages("dplyr")
library(dplyr)

#Select function:
Selected_DS<- DS_Titanic %>%  select(Name, Sex, Age, Fare)

head(Selected_DS)

#filter function:

Filtered_DS <- DS_Titanic %>% filter(Age>45)

head(Filtered_DS)

#Arranged function:

Arranged_DS <- DS_Titanic %>% arrange(desc(Age))

head(Arranged_DS)

#Mutate Function

Mutated_DS <- DS_Titanic %>% mutate(Fare_BDT= Fare*122)

head(Mutated_DS)




###Task 6###

MeanFare_Pclass <- DS_Titanic %>% group_by(Pclass) %>% summarise(Mean_Fare= mean(Fare,na.rm = TRUE))

MeanFare_Pclass



### Task 7###



head(DS_Titanic2)

# Split the Name column to extract FirstName
DS_Titanic2 <-DS_Titanic %>% mutate(FirstName= sapply(strsplit(as.character(Name),","),'[',2))

head(DS_Titanic2)

#Split the Name Column to extract SurName
DS_Titanic2 <- DS_Titanic %>% mutate(SurName= sapply(strsplit(as.character(Name),","),'[',1))

head(DS_Titanic2)

#Summarize and Count

SurName_Counts= DS_Titanic2 %>% group_by(SurName) %>% summarise(Count=n())

head(SurName_Counts)

#Saving the Dataframe as titanic2.csv

write.csv(SurName_Counts,"titanic2.csv",row.names = FALSE)



## Task 8###

#Subset for female over 50 Dataset
SubsetFemale_Over50 <- subset(DS_Titanic,Sex == "Female" & Age>50 )

SubsetFemale_Over50

Subset_Pclass1 <- subset(DS_Titanic, Pclass==1)

head(Subset_Pclass1)

### TASK 9 ###

install.packages("ggplot2")
library(ggplot2)

ggplot(DS_Titanic, aes(x = Age, y = Fare)) +
  geom_point(color = "red") +
  labs(title = "Scatter Plot: Age vs Fare",
       x = "Age",
       y = "Fare") +
  theme_minimal()
