#1: Creating list with same data type

Roll_List <- list(100,101,103,104,105)
Name_List <- list("Aman","Suman","Saba","Tarannum","Tara")
Age_List <- list(22,23,33,23,34)

Roll_List
Name_List
Age_List

#2: Creating the list with different data type

Mix_List <- list(101,201,c(23,45,65),TRUE,FALSE,TRUE,22.3,45L)
Mix_List

#3: Creating a list containing a vector, a matrix and a list.  
list_data <- list(c("Shubham","Nishka","Gunjan"), matrix(c(40,80,60,70,90,80), nrow = 2),  
                  list("BCA","MCA","B.tech")) 
list_data[2]

#4. Converting list to vector using unlist()

class(Roll_List)

Roll_int <- unlist(Roll_List)
class(Roll_int)


#5. Merging Lists

merge.list <- list(Roll_List,Name_List)