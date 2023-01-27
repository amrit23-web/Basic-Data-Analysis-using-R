install.packages("dplyr")
library("dplyr")

install.packages("tidyverse")
library("tidyverse")

# create a dataframe using Vector
rollno <- c(201,202,203,204,205)
name <- c("Arjun","Birju","Chetna","Deepak","Emran")
age <- c(35,38,28,34,56)
salary <- c(23000,34000,40000,34500,12000)
design <- c("AP","AP","PROF","DIRECTOR","PROF")

df <- data.frame(rollno,name,age,salary,design)
df

#create a dataframe using Vector
rollno <- c(201,202,203,204,205)
mark1 <- c(23,45,78,22,34)
mark2 <- c(45,22,34,67,78)
mark3 <- c(45,67,33,78,90)

df1 <- data.frame(rollno,mark1,mark2,mark3)
df1

#Concatenate df and df1

df2 <- merge(df,df1)
df2

#What is the average salary ?
meanSalary = colMeans(df2['salary'])
meanSalary

#Show the records of person who are getting more than average salary
filter(df, salary<meanSalary)
df

df# show the dimension of df3
dim(df3)
#dimension of df
dim(df)
#Select all the records from df whose age is greater than 40
filter(df, age>40)
#Select all the records from df whose age is greater than 25 and salary greater than 35000
filter(df, salary>35000 & age > 25)
#Select all the records from df whose age is greater than 35 or salary greater than 35000
filter(df, salary>35000 | age > 35)
#Select all records whose have different designation
distinct(df,design,.keep_all = TRUE)
#Sort all records as per their salary
arrange(df2, salary)
#Sort all records as per their age
arrange(df2, age)
# Select age and salary columns from df
age_sal <- select(df2,age,salary)
age_sal
# Change the design with designation
rename(df2, designation=design)
#Create a new column incentive that is 30% of salary
mutate(df2, incentive = salary * 0.3)
#Find maximum and average salary of df dataset
summarise(df,max(salary),mean(salary))
# create new data in which record arrange in ascending order as per age
df_asc <- df[order(age),]
df_asc
# create new data in which record arrange in dscending order as per salary
df_dsc <- df[order(-salary),]
df_dsc
#sort by age (ascending) and salary (descending)
df_asc_dsc <- df[order(age,-salary),]
df_asc_dsc

#Add one row in df
df
df <- df %>% add_row(rollno = 206,name = "Arun",age = 23, salary = 47000, design="PROF")
df

df1 <- data.frame(rollno = 207,name = "Arua",age = 25, salary = 47500, design="PROF")
df <- df %>% 
  rows_insert(df1)
df
# Way of adding column
# Add column hra using $
hra = c(760,806,304,505,405,505,507)
df$hra = hra
df
# Add column da using da
da = c(760,860,456,666,555,555,677)
df['da'] <- da
# Add new column experience using cbind
experience = c(7,6,4,1,2,3,4)
df <- cbind(df, experience)
df
# Add multiple columns to dataframe
city = c("Delhi","Delhi","Delhi","Mumbai","Madras","UK","UK")
pin =c(110023,110025,110024,110023,110025,110001,110025)
df <- cbind(df, city, pin)
df

#delete 4th row
df2 <- df[-4,]
df2

# delete rows by range
df3 <- df[-(1:3),]
df3

#Show all records who belongs to UK
filter(df3,city=="UK")

