#Problem 1
#1 Create vectors containing {3.1, 4.1, 5.1, 6.1, 7.1, 8.1} elements in three different ways.
vector1 <- c(3.1, 4.1, 5.1, 6.1, 7.1, 8.1)
vector2 <- seq(3.1, 8.1, by=1)
vector3 <- seq(3.1, 8.1, length.out=6)

#2 Add three new elements to vector1: 10, 20, 30.
vector1 <- append(vector1, 10, after = 0) # 10 should be the first element in the vector
vector1 <- append(vector1, 20, after = 2) # 20 should be the 3rd element in the vector given that 10 has been already added to it
vector1 <- append(vector1, 30, after = 5) # 30 should be the 6th after given 10 and 20.
vector1

#3 Name it vector4.
vector4 <- c(2, 3, 6, 10, 15, 18, 22, 25, 27, 30, 31, 35, 42)
vector5 <- vector4[vector4>5 & vector4 %%3 == 0] #Elements > 5 and divisible by 3.
print(vector5)
27 %in% vector5 #Find whether 27 in vector5


#Problem 2
#1 Create a list with the following elements: [1, 50, 88], [“yesterday”, “today”, “tomorrow”], 22.5, [33.8, 42], “class_0001”. Name it list1.
list1 <- list(c(1, 50, 88), c('yesterday', 'today', 'tomorrow'), c(22.5), c(33.8, 42), 
           c('class_0001'))
print(list1)

#2 Apply unlist() function to list1.
unlist(list1)
class(unlist(list1)) # Data type
str(unlist(list1)) # Data Structure
#The unlisted list1 is a vector contains elements in “character” type. The unlist function returns vector in “character” type when the list consists of data in different types, such as c(1, 50, 88) and c("yesterday", "today", "tomorrow").

#3 Create a new list (name it list2).
list2 <- list1
list2[[1]] <- list2[[1]][-3] #remove the third element within the first element of list 1
print(list2)
print(list2[[2]][c(2,3)]) #extract the second and third elements of the second element of list2

#4 Create a new list with the following elements: 23, “new”, 45.7. Name it list3. Now create a new list (name it list4) by merging list2 and list3 with a c(). How many elements does list4 contain (use a built-in function to count). Extract the first element of list4 as a list and as a vector.
list3 <- list(c(23), c('new'), c(45.7))
list4 <- c(list2, list3) #merge list2 and 3
print(list4)
length(list4)
list(list4[[1]]) #extract as a list
list4[[1]] #extract as a vector


#Problem 3
#1 Create a data frame (name it df1)
Name <- c("James", "Linda", "Stacy", "Mary", "Tom", "Anna", "Bob", "Jeniffer", "Lucas", "Amy", "Jim")
Major <- c("Math", "Math", "Genetics", "Statistics", "Accounting", "Art", "Music", "Business", "Finance", "Finance", "Math")
Grad_Year <- c(2023, 2025, 2025, 2024, 2026, 2024, 2025, 2025, 2023, 2026, 2024)
GPA <- c(3.9, 3.75, 4.0, 4.0, 3.4, 3.9, 3.3, 3.8, 3.55, 4.0, 3.6)
df1 <- data.frame(Name, Major, Grad_Year, GPA)
print(df1)

#2 Capitalize its column names.
colnames(df1) <- c('NAME', 'MAJOR', 'GRAD_YEAR', 'GPA')
summary(df1$GPA) # Get a 6-number summary of GPA column
class(df1$GRAD_YEAR) # Data type of GRAD_YEAR column
df1$GRAD_YEAR <- as.factor(df1$GRAD_YEAR) # Convert it into the correct data structure
summary(df1$GRAD_YEAR) # the frequency of its elements

#3 Ifelse statement to add a new column NEXT_YEAR to the df1
df1$NEXT_YEAR <- ifelse(df1$GRAD_YEAR == 2024, TRUE, FALSE)

#4 Extract all students in the df1 who is majoring in Math and is not going to graduate this year (2023)
df1[df1$MAJOR == 'Math' & df1$GRAD_YEAR != 2023, ] #Select columns


#Problem 4

#1 Create a matrix with 5 columns.
matrix1 <- matrix(c(10, 3, 6, 23, -5, -4, 13, 
                     17, 5, 6, -7, -10, 13, 39, 
                     20, 2, 1, 9, 11, -22, 23, 
                     -15, -3, 6, 12), ncol = 5)
print(matrix1)

#2 Use a For loop to replace elements of matrix1.
for (i in 1:dim(matrix1)[1]) {
  
  for (j in 1:dim(matrix1)[2]) {
    
    if (matrix1[i,j] < 0) {
      
      matrix1[i, j] = 0  #negative value, replace it with 0
      
    }
    
    else if (matrix1[i,j] >= 10) {
      
      matrix1[i,j] = 10  #greater than or equal to 10, replace it with 1
      
    }
    
    else {
      
      matrix1[i,j] = 5  #greater than or equal to 0 and less than 10, replace it with 5
    }
  }
}

print(matrix1)

#3 Create an empty vector vector6. Use a While loop to populate vector6.
vector6 <- c()
i <- 0
while (i<30) {
  i <- i+1
  if (i%%2 == 0 | i%%3 == 0) { #odd number >0 and not divisible by 3
    next
  }
  vector6 <- c(vector6, i)
}
print(vector6)


#Problem 5

#1 Create a function (name it fun1) that will take a numeric vector as input and will extract elements of the input vector that are greater than 10. 
v <- c(1, 4, 45, 23, 7, 9, 12, 15, 33)

# Method 1: for loop
fun1 <- function(v){
  result <- c()
  for (i in 1:length(v)) {
    if (v[i]>10){
      result <- c(result, v[i])
    }
  }
  return (result)
}
fun1(v)

# Method 2
fun1 <- function(v) {
  return(v[v>10])
}
fun1(v)

#2 Take two matrices as inputs (mat1 and mat2) and will produce another matrix that has its elements populated.
mat1 <- matrix(c(1, 4, 9, 5, 2, 7, 4, 3, 10), nrow = 3, byrow = TRUE)
mat2 <- matrix(c(2, 3, 10, 9, 1, 4, 4, 3, 9), nrow = 3, byrow = TRUE)
print(mat1)
print(mat2)
fun2 <- function(mat1, mat2) {
  mat3 <- matrix(nrow = dim(mat1)[1], ncol = dim(mat1)[2])
  for (i in 1:dim(mat1)[1]){
    for (j in 1:dim(mat2)[2]){
      if (mat1[i,j] > mat2[i,j]){
        mat3[i,j] <- 'Greater than'
      }
      else if (mat1[i,j] < mat2[i,j]){
        mat3[i,j] <- 'Less than'
      }
      else {
        mat3[i,j] <- 'Equal to'
      }
    }
  }
  return (mat3)
}
fun2(mat1, mat2)






