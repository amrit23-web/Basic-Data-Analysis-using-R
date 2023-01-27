install.packages("dplyr")
library(dplyr)

install.packages("tidyverse")
library(tidyverse)

#kalidoscope of boxplot.
data("iris")
boxplot(iris$Sepal.Length~iris$Species, notch=TRUE)

hist(iris$Sepal.Length)
hist(iris$Petal.Length)
hist(iris$Sepal.Length,freq=F,col="red",add=TRUE,density=100,angle=-45)

## Frequency table with with proportion using table() function in R 
table1 = as.table(table(iris$Species))
prop.table(table1)
#Frequency table with condition:
table(iris$Sepal.Length>1.0)

#Data visialization using advanced library ggplot2 in R
install.packages("dplyr")
library(ggplot2) # Data visualization
library(readr) # CSV file I/O, e.g. the read_csv function
library(gridExtra)
library(grid)
library(plyr)

# First let's get a random sampling of the data
iris[sample(nrow(iris),10),]


# Density & Frequency analysis with the Histogram,
# Sepal length 
HisSl <- ggplot(data=iris, aes(x=Sepal.Length))+
  geom_histogram(binwidth=0.2, color="black", aes(fill=Species)) + 
  xlab("Sepal Length (cm)") +  
  ylab("Frequency") + 
  theme(legend.position="none")+
  ggtitle("Histogram of Sepal Length")+
  geom_vline(data=iris, aes(xintercept = mean(Sepal.Length)),linetype="dashed",color="grey")
#HisSl

# Sepal width
HistSw <- ggplot(data=iris, aes(x=Sepal.Width)) +
  geom_histogram(binwidth=0.2, color="black", aes(fill=Species)) + 
  xlab("Sepal Width (cm)") +  
  ylab("Frequency") + 
  theme(legend.position="none")+
  ggtitle("Histogram of Sepal Width")+
  geom_vline(data=iris, aes(xintercept = mean(Sepal.Width)),linetype="dashed",color="grey")
# Petal length
HistPl <- ggplot(data=iris, aes(x=Petal.Length))+
  geom_histogram(binwidth=0.2, color="black", aes(fill=Species)) + 
  xlab("Petal Length (cm)") +  
  ylab("Frequency") + 
  theme(legend.position="none")+
  ggtitle("Histogram of Petal Length")+
  geom_vline(data=iris, aes(xintercept = mean(Petal.Length)),
             linetype="dashed",color="grey")
#HistPl
# Petal width
HistPw <- ggplot(data=iris, aes(x=Petal.Width))+
  geom_histogram(binwidth=0.2, color="black", aes(fill=Species)) + 
  xlab("Petal Width (cm)") +  
  ylab("Frequency") + 
  theme(legend.position="right" )+
  ggtitle("Histogram of Petal Width")+
  geom_vline(data=iris, aes(xintercept = mean(Petal.Width)),linetype="dashed",color="grey")
#HistSw

# Plot all visualizations
grid.arrange(HisSl + ggtitle(""),
             HistSw + ggtitle(""),
             HistPl + ggtitle(""),
             HistPw  + ggtitle(""),
             nrow = 2,
             top = textGrob("Iris Frequency Histogram", 
                            gp=gpar(fontsize=15))
)

