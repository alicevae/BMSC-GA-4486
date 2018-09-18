#Assign the string hello world to object h and print the result.
h <- "hello world"
h

objects()
date()
#Objects lists the names of variables, whereas Date lists a string showing the date

#seq: lets you list numbers in a sequence from x to y. 
#You can also pick what units you want to go by, or how many numbers you want to list total
#Examples:
simple <- seq(1,10)
by_0.5 <- seq(1,10,by = 0.5)
fifteen_total <- seq(1,length.out = 15)
simple
by_0.5
fifteen_total

#rep repeats things. Examples:
rep(1:3,2) #repeats the series to make 1 2 3 1 2 3
rep("Alice",2) # "Alice" "Alice"

v <- c(2, 15, 5, 7)
n <- c("two", "fifteen", "five", "seven")
names(v) <- n

names(n) <- v #gives each component of the vector c("two", "fifteen", "five", "seven") numerical names 
#What if the length of either vectors (names or values) are not the same?
v <- c(2, 15, 5,7,4)
n <- c("two", "fifteen", "five", "seven")
names(v) <- n 
#If there are too many names, you get an error and this action is not carried out
#If there are too few names, the last variables in the vector get the name NA

#What happens if you label two numbers with the same name?
v <- c(2, 15, 5, 7)
n <- c("two", "fifteen", "five", "five")
names(v) <- n #Doesn't seem like it's a problem to label two numbers with the same name

print(v)
v[c(1,2)]
v[c("two", "seven")]
v[-c(1,2)]
v[c(FALSE, TRUE, TRUE, FALSE)]
v[c(2,1)] # Swapping the index gives the second number first
v[c("two","three")] # Result is the number named "two", then NA named <NA>
#Subsetting "all but some" using names
v[-c("two")] #No this doesn't work
v[c(FALSE, TRUE)] #Recycles by taking every other one
tail(v,1) # Gives the last element of the vector

#Make a vector of length 5 with NA in them and test for missing values using the is.na() function.
Five <- c(1,2,3,4,NA)
is.na(Five)
##[1] FALSE FALSE FALSE FALSE  TRUE

#Extend this to a vector of length 5000
FiveThousand <- c(NA,1:4999)
is.na(FiveThousand)
##[1]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
##[13] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
##etc.

#?paste
#paste0 concatenates with no space
##[1] "Learning R isfun"   "Learning R istough"
#collape puts a string in between multiple statements, instead of " " seperating them
##"Learning R is funANDLearning R is tough"
#sep puts something else inbetween the two strings you're concatenating, other than the default space
##"Learning R isANDfun"   "Learning R isANDtough"

#is.charachter(y) tests if y is a charachter
is.character(2)
##[1] FALSE
y<-as.character(2)
is.character(y)
##[1] TRUE

#What happens if the number of rows/coumns are more than the generated numbers when using the function matrix()?
matrix(1:5, nrow=2, ncol=3)
##It recycles the first term in the space that's missing a number:
##[,1] [,2] [,3]
##[1,]    1    3    5
##[2,]    2    4    1
#What happens in cbind() (and rbind()) if one of the columns (and rows) have more numbers than the other?
cbind(1:3,1:4)
#It recycles the first number in the space where the column is shorter than it's bound column

#Combine two matrices using cbind().
a <- matrix(1:6,ncol = 2)
b <- matrix(7:12,ncol = 2)
c <- cbind(a,b)
c
d <-rbind(a,b)
d
#Answer: cbind binds them as new columns, rbind binds them as new rows
##[,1] [,2] [,3] [,4]
##[1,]    1    4    7   10
##[2,]    2    5    8   11
##[3,]    3    6    9   12

#Can you “bind” two matrices of different data types? What happens when you do that?
nums <- matrix(1:3)
abc <- matrix(c("a","b","c"))
cbind(nums,abc)
#This is possible, and coerces the numbers into charachters
##[,1] [,2]
##[1,] "1"  "a" 
##[2,] "2"  "b" 
##[3,] "3"  "c" 

M <- matrix(1:9, nrow=3)
M[5]
##5, the fifth "element"
M[c(2,3),c(1,2)]
#This finds the items in the 2nd and 3rd rows, in the first and second columns

#What happens if you subtract/add/multiply two matrices of different size?
M1 <- matrix(1:8,nrow = 2)
M2 <- matrix(1:8,nrow = 4)
M1-M2
#I get an error message: non-conformable arrays