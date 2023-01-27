# Way of creating Vector
# Using : 

vect_colon <- c(1:10)
vect_colon

# using seq()
vect_seq <- seq(1,10,0.5)
vect_seq

# numeric vector
vect_val <- c(10,20,30,40,50)
vect_val
class(vect_val)

# charcater vector
vect_char <- c("Arjun","Raj","Chauhan")
vect_char
class(vect_char)

vect_char <- c(34,45,78)
vect_char_c <- as.character(vect_char)
class(vect_char_c)

# integer vector using as.integer
vect_int <- c(22,34,55,66,77)
vect_int <- as.integer(vect_int)
vect_int
class(vect_int)
# integer vector using L
vect_int_L <- c(34L,56L,66L)
vect_int_L
class(vect_int_L)

#Logical Vector

a <- as.integer(45)
b <- as.integer(56)

c <- a>b
d <- a<b

c
d

#Accessing Vector elements

vect_val
# 1) Indexing with integer vector
vect_val[2]
# Accessing values from a range
vect_val[2:4]


# 2) Indexing with a character vector
vect_call <- c("Arjun"=1001,"Raj"=1004,"Arjun"=750)
vect_call["Arjun"]

#3) Indexing with a logical vector
vect_log <- c(12,34,45,66)
vect_log[c(TRUE,FALSE,TRUE,TRUE)]

# Vector Operations

#1) Combining vectors
vect1 <- c(101,102,103,104)
vect2 <- c("Sunil","Anil","Kapil","Kaif")
vect1_vect2 <- c(vect1,vect2)
vect1_vect2

#2) Arithmetic operations
vect3 <- c(12,67,63,77)
vect4 <- c(3,5,7,8)

vect_sum <- vect3 + vect4
vect_sum

vect_minus <- vect3 - vect4
vect_minus

vect_mul <- vect3 * vect4
vect_mul

vect_div <- vect3/vect4
vect_div

vect_power <- vect3 ** 2
vect_power

#3) Logical Index vector

vect_name <- c("Rohan","Sohan","Johan")
vect_att <- c(TRUE,FALSE,FALSE)
vect_name[vect_att]

#4) Numeric Index
vect_name[1:2]
vect_name[2]
vect_name[-2]

#5) Duplicate Index

vect_emp <- c("Arnav","Gosawmi","Bijay","Poo","Tooo")
vect_emp[c(1,2,2,3,4,4)]

#6) Range Indexes
vect_emp[2:5]

#7) Out-of-order Indexes
q<-c("shubham","arpita","nishka","gunjan","vaishali","sumit")
b<-q[2:5]  
q[c(2,1,3,4,5,6)]  

#8) Named vectors members

vect_mem <- c(101,"Tina",23)
names(vect_mem)=c("Roll No","Student","Age")  
vect_mem

#Create a vector and perform all basic in-built statistics functions over it
# 1. mean  2. mode 3. median  4. sd  5. min  6. max  7. range  8. sum  9. quantile 10. diff()

v <- c(10,20,30,20,20,50,10)
v
mean_v <- mean(v)
mean_v
mode_v <- mode(v)
mode_v
median_v <- median(v)
median_v
range_v <- range(v)
range_v
sum_v <- sum(v)
sum_v
sd_v <- sd(v)
sd_v
quantile_v <- quantile(v)
quantile_v
diff_v <- diff(v)
diff_v