install.packages("dplyr")
library("dplyr")
# Built in functions
x <- 25
sqrt(x)
log(10)

# Area of circle

circle = function(r,h){
  area = 3.14 * r * r * h
  print(area)
}

circle(10,10)

# Print "Hello", 5 times using rep()
rep("Hello",5)
#AQ1 : Create a sequence from 1 to 25 by using seq().

seq(15:25)

#AQ2 : Find mean of first 100 natural numbers using mean().

mean(1:100)

#AQ3 : Find median of first 99 natural numbers using median().

median(1:10)
median(1:9)

#AQ4 : Find sum of first 50 natural numbers using sum().

sum(1:50)

#AQ5 : Create a function Volume to find volume of a cylinder.

volume = function(r,h){
  vol = 3.14 * r * r * h
  print(vol)
}

volume(10,10)

#AQ6 : Create a function to call factorial of a number.

fact = function(n){
  f <- 1
  for( i in 1:n ){
    f <- f * i
  }
  print(f)
}
fact(15)

#Create a integer value vector 
int <- c(12,34,56,33,23)
int
#Create a float value vector
float <- c(12.4,34,56,33,23)
float
#Create a list
nam <- c(12,22.4,"Ram",45)
str(list(nam))

#Create a matrix

m <- c([1,2],[3,4])
m

matrix(c(1,2,3,4,5,6), nrow = 2, ncol=3)


# Create a vector and find dnorm, pnorm and dbinom
v <- c(10,20,30,40,50)
pnorm(v)
dnorm(v)
dbinom(v,10,0.5)

# Find relation between height and weight vector using lm()
height <- c(123,125,136,110)
weight <- c(50,60,70,40)

lm(height ~ weight)