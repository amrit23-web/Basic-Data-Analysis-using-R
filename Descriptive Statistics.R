#Descriptive statistics in R
#install reqquired packages
install.packages("dplyr")
library("dplyr")
install.packages("tidyverse")
library("tidyverse")

#import iris dataset

df_iris <- read.csv("C:\\Users\\Raj Chauhan\\OneDrive\\Desktop\\R Studio\\Iris.csv")
df_iris

#show top five records
head(df_iris)

#show bottom five records
tail(df_iris)

#check structure of df_iris
str(df_iris)

#find range of SepalLengthCm
range(df_iris$SepalLengthCm)
range1 = max(df_iris$SepalLengthCm) - min(df_iris$SepalLengthCm)
range1

filter(df_iris, PetalWidthCm > 2)

