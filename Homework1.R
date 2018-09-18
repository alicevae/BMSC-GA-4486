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
