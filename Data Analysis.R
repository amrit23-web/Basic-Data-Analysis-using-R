install.packages("dplyr")
library("dplyr")

install.packages("tidyverse")
library("tidyverse")

df_result <- read.csv("C:\\Users\\Raj Chauhan\\OneDrive\\Desktop\\R Studio\\Test.csv")
df_result

mean(df_result$CT.1)
mean(df_result$CT.2)
mean(df_result$CT.3)

cor(df_result$CT.1,df_result$CT.2)
cor(df_result$CT.1,df_result$CT.3)
cor(df_result$CT.2,df_result$CT.3)

plot(df_result$CT.1,df_result$CT.2)
plot(df_result$CT.1,df_result$CT.3)
plot(df_result$CT.2,df_result$CT.3)

install.packages("sqldf")
library("sqldf")

model <- lm(df_result$CT.1 ~ df_result$CT.2)
model
# Find all students who got more than 25 in every CT 
subset(df_result,CT.1 > 25 & CT.2 > 25 & CT.3 > 25)
# Add Total column in this dataframe
df_result_total <- mutate(df_result,Total = CT.1 + CT.2 + CT.3)
df_result_total
# Add Per column in this df_result_total 
df_result_per <- mutate(df_result_total,Per = Total/90 * 100)
df_result_per
#Display all students whose percentage greater than 45%
subset(df_result_per, Per > 90)
##Display all students whose percentage greater than 70% and appear in any two CT
subset(df_result_per, Per > 70 & ((CT.1>0 & CT.2>0) | (CT.1>0 & CT.3>0) | (CT.2>0 & CT.3>0)))
#Print the record of student who got maximum marks
subset(df_result_per, Per == max(Per))
#Print the record of student who got minimum marks
subset(df_result_per, Per == min(Per))
#Find out student who didn't appear in any CT
subset(df_result_per, CT.1 == 0 & CT.2 == 0 & CT.3 == 0)
#Find Students who got above average marks in CT1
mean_CT1 = mean(df_result_per$CT.1)
mean_CT1
subset(df_result_per, CT.1 > mean(CT.1))
#Find the record of those students who didn't appera in CT2 and CT3
subset(df_result_per, CT.2 == 0 & CT.3 == 0)
# What is the correlation between CT1 and CT2
cor(df_result_per$CT.2, df_result_per$CT.3)
#Draw Box plot of CT1 marks  
boxplot(df_result_per$CT.1, main ="Boxplot of CT1 Marks",ylab = "CT1 Marks",xlab = "CT1")
#Draw Box plot of CT1 marks  
barplot(df_result_per$CT.1, main ="Boxplot of CT1 Marks",ylab = "CT1 Marks",xlab = "CT1")

#Create a database Topper of sudents who got more than 80% marks from df_result_per
Topper <- subset(df_result_per, Per > 90)
Topper
# Draw bar diagram of Topper
barplot(Topper$Per, main ="Toppers Data",ylab = "Per",xlab = "STUDENT")
#Draw Box plot of Percentage of Student  
boxplot(Topper$Per, main ="Toppers Data",ylab = "Per",xlab = "STUDENT")
#Draw Scatter plot of CT.2 Marks of Student  
plot(df_result_per$CT.2, main ="Toppers Data",ylab = "Per",xlab = "STUDENT", col = "Red")
#Draw boxplot of CT1, CT2 and CT3 
boxplot(df_result_per[,3:5], main ="Boxplot of Students",ylab = "Marks",xlab = "Sessional",color = "Red")
#Draw histogram CT1 marks 
hist(df_result_per$CT.3, main ="Histogram of Students",ylab = "Marks",xlab = "Sessional")
