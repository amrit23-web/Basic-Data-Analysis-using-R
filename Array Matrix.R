#Creating two vectors of different lengths  
vec1 <-c(1,3,5)  
vec2 <-c(10,11,12,13,14,15)  

#Taking these vectors as input to the array   
res <- array(c(vec1,vec2),dim=c(3,3,3))  
print(res)  

#Initializing names for rows, columns and matrices  
col_names <- c("Col1","Col2","Col3")  
row_names <- c("Row1","Row2","Row3")  
matrix_names <- c("Matrix1","Matrix2") 

#Taking the vectors as input to the array   
res <- array(c(vec1,vec2),dim=c(3,3,2),dimnames=list(row_names,col_names,matrix_names))  
#To access Second Matrix
print(res[,,2])  
#To access 1 row and 2 column element of matrix 2
print(res[1,2,2]) 
#Create two matrices mat1 and mat2
mat1 <- array(c(110,22,33,44,55,66), dim=c(2,3,1))
print(mat1)
mat2 <- array(c(11,220,133,440,155,166), dim=c(2,3,1))
print(mat2)

mat1*mat2
mat1+mat2
mat1-mat2

#Matrix Creation
matrix1<-matrix(c(11, 13, 15, 12, 14, 16),nrow =3, ncol =2, byrow = TRUE)  
matrix1  

#Syntax : matrix(data, nrow, ncol, byrow, dim_name)  

#Arranging elements sequentially by row.  
P <- matrix(c(5:16), nrow = 4, byrow = TRUE)  
print(P)  

# Arranging elements sequentially by column.  
Q <- matrix(c(3:14), nrow = 4, byrow = FALSE)  
print(Q)  

# Defining the column and row names.  
row_names = c("row1", "row2", "row3", "row4")  
ccol_names = c("col1", "col2", "col3")  

R <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))  
print(R)  
# Change R[1,2] value by 40
R[1,2]
R[1,2] <- 40
R

#Replacing elements whose values are greater than 12  
R
R[R>12]<-0  
print(R)  

#Matrix operations

R <- matrix(c(5:16), nrow = 4,ncol=3)  
S <- matrix(c(1:12), nrow = 4,ncol=3)  

#Addition  
sum<-R+S  
print(sum)  

#Subtraction  
sub<-R-S  
print(sub)  

#Multiplication  
mul<-R*S  
print(mul)  

#Multiplication by constant  
mul1<-R*12  
print(mul1)  

#Division  
div<-R/S  
print(div)  