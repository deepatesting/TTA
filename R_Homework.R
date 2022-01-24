## Homelearning Task
# 1. Matrix
a <- c(1,2,3,4,5)
b <- c(6,7,8,9,10)
c <- c(11,12,13,14,15)

newmatrix <- rbind(a,b,c)
print(newmatrix)
length(newmatrix)
dim(newmatrix)

newmatrix[1,2]
newmatrix[2,]

for (rows in 1:nrow(newmatrix)) {
  for (columns in 1:ncol(newmatrix)) {
    print(newmatrix[rows, columns])
  }
}

x <- newmatrix[c(1,2,3),]
print(x)

plot(a,b, main="My Graph", xlab="The x-axis", ylab="The y axis", type='o', col='red')

matplot(newmatrix,main="My Graph", xlab="The x-axis", ylab="The y axis", type ="o", pch=15)

# 2. Data Frames
Name <- c("George", "Paul", "Deepa", "Arthi", "Craig")
Age <- c(35, 45, 39, 38, 30)
Role <- c("TA", "IT", "DS", "Analyst", "QA")
Length_of_service <- c(10, 15, 8, 5, 10)

frame <- data.frame(Name, Age, Role, Length_of_service)
print(frame)
frame["Name"]

# 3. Use ggplot2 and draw a graph using qplot

install.packages("ggplot2")
library("ggplot2")

# Data sets in package ‘ggplot2’:
data(package = "ggplot2")

#ggplot2::mpg

x <- c(1:20)
print(x)
y <- x^2
print(y)

qplot(x, y)
qplot(x, y, geom=c("point", "line"))

# 4. Simple bar plot
subjects = c("Eng", "Maths", "Sci", "Social", "French")
marks = c(80, 78, 98, 87, 70)

barplot(marks, names.arg=subjects, main="Bar Plot Graph", 
        xlab="Subjects", ylab="Marks", col='blue', border='red')

 # 5. Take input from user
name <- readline("Enter your name:")
age <- readline("Enter your age:")

display <- paste("Name is", name, "and age is", age)
print(display)

# 6. Create a sequence and find mean
seq <- c(20:50)
print(seq)
mean <- mean(seq)
sum <- sum(seq)
values <- paste("Mean and sum of numbers from 20 to 50 are", mean,"and", sum)
print(values)

# 7. Random number
random <- runif(10, min=-50, max=50)
int_values <- floor(random)
int_values
# Another method
random <- sample(-50:50, 10, replace=FALSE)
print("Random Integer values between -50 and 50 are:")
random

# OPTIONAL CHALLENGE
# 1. First 10 fibonacci numbers

y = 0
vector <- c()

vector[1] <- 0
vector[2] <- 1

for (x in 3:10) {
  vector[x] <- vector[x-1] + vector[x-2]
}
print("Fibonacci series of first 10 numbers are:")
vector

# 2. Print numbers from 1 to 100

for ( x in 1:100) {
  y = x %% 3
  z = x %% 5
  if (y == 0) {
    if (z == 0) {
      print(paste(x, "FizzBuzz"))
    } else {
      print(paste(x, "Fizz"))
    }
  } else if ( z == 0 ) {
    print(paste(x, "Buzz"))
  } 
}
