#Problem 1
#1
vector1 <- c(3.1, 4.1, 5.1, 6.1, 7.1, 8.1)
vector2 <- seq(3.1, 8.1, by=1)
vector3 <- seq(3.1, 8.1, length.out=6)
#2
vector1 <- append(vector1, 10, after = 0)
vector1 <- append(vector1, 20, after = 2)
vector1 <- append(vector1, 30, after = 5)
vector1
#3
vector4 <- c(2, 3, 6, 10, 15, 18, 22, 25, 27, 30, 31, 35, 42)
vector5 <- vector4[vector4>5 & vector4 %%3 == 0]
print(vector5)
27 %in% vector5

#Problem 2
#1
list1 <- list(c(1, 50, 88), c('yesterday', 'today', 'tomorrow'), c(22.5), c(33.8, 42), 
           c('class_0001'))
print(list1)
#2
unlist(list1)
class(unlist(list1))
str(unlist(list1))
#3
list2 <- list1
list2[[1]] <- list2[[1]][-3] #remove the third element within the first element of list 1
print(list2)
print(list2[[2]][c(2,3)])
#4
list3 <- list(c(23), c('new'), c(45.7))
list4 <- c(list2, list3) #merge list2 and 3
print(list4)
length(list4)
list(list4[[1]]) #extract as a list
list4[[1]] #extract as a vector

#Problem 3
#1
Name <- c("James", "Linda", "Stacy", "Mary", "Tom", "Anna", "Bob", "Jeniffer", "Lucas", "Amy", "Jim")
Major <- c("Math", "Math", "Genetics", "Statistics", "Accounting", "Art", "Music", "Business", "Finance", "Finance", "Math")
Grad_Year <- c(2023, 2025, 2025, 2024, 2026, 2024, 2025, 2025, 2023, 2026, 2024)
GPA <- c(3.9, 3.75, 4.0, 4.0, 3.4, 3.9, 3.3, 3.8, 3.55, 4.0, 3.6)
df1 <- data.frame(Name, Major, Grad_Year, GPA)
print(df1)
#2
colnames(df1) <- c('NAME', 'MAJOR', 'GRAD_YEAR', 'GPA')
summary(df1$GPA)
class(df1$GRAD_YEAR)
df1$GRAD_YEAR <- as.factor(df1$GRAD_YEAR)
summary(df1$GRAD_YEAR)
#3
df1$NEXT_YEAR <- ifelse(df1$GRAD_YEAR == 2024, TRUE, FALSE)
#4
df1[df1$MAJOR == 'Math' & df1$GRAD_YEAR != 2023, ] #Select columns

#Problem 4
#1
matrix1 <- matrix(c(10, 3, 6, 23, -5, -4, 13, 
                     17, 5, 6, -7, -10, 13, 39, 
                     20, 2, 1, 9, 11, -22, 23, 
                     -15, -3, 6, 12), ncol = 5)
print(matrix1)
#2
for (i in 1:dim(matrix1)[1]) {
  
  for (j in 1:dim(matrix1)[2]) {
    
    if (matrix1[i,j] < 0) {
      
      matrix1[i, j] = 0
      
    }
    
    else if (matrix1[i,j] >= 10) {
      
      matrix1[i,j] = 10
      
    }
    
    else {
      
      matrix1[i,j] = 5
    }
  }
}

print(matrix1)
#3
vector6 <- c()
i <- 0
while (i<30) {
  i <- i+1
  if (i%%2 == 0 | i%%3 == 0) {
    next
  }
  vector6 <- c(vector6, i)
}
print(vector6)

#Problem 5
#1
v <- c(1, 4, 45, 23, 7, 9, 12, 15, 33)
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

fun1 <- function(v) {
  return(v[v>10])
}
fun1(v)

#2
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






