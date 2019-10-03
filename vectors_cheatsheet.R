########################################
# 1. Creating a vector
########################################

a <- c(3, 5.6, 1, 4, -7)
bool <- a == 4 # Changes the values to boolean if it matches OUT--> FALSE FALSE FALSE  TRUE FALSE
text <- c("big", "small")


########################################
# 2. Accessing or extracting elements
########################################

a[1] # Returns the exact element
a[-2] # Returns all but the second element
a[1:3] # Returns the range of the elements
a[-(2:4)] # Returns all but the given range
a[c(1,3,4)] # Returns the specific values indexed by the vector
a[a > 2] # Returns all elements greater than 2
a[a > 2 & a < 4] # Returns the elements within the evaluated condition
text[text %in% c("b", "medium", "small")] # Returns text from a vector of options see: %in%


########################################
# 3. Useful functions in vectors
########################################

is.vector(text)
length(a)
sum(a)
t(a) # Returns the transpose vector - row vector


########################################
# 4. Operations with a scalar
########################################

2*a # Product by a scalar
b <- a - 4 # Subtraction of a scalar
b


########################################
# 5. Operations between vectors
########################################
d <- a[c(1,3,5)]
e <- 3/d
d+e
d-e
d <- d+e
d*e
e/d
t(d)%*%e # Scalar product of row vector t(d) and column vector e


########################################
# 6. Generating replicating vectors
########################################
x <- 1:5
rep(x, 2) # Replicate vector x two times
rep(x, each=2) # Replicate each element of x two times
?rep # Access the help page for rep


########################################
# 7. Generating a sequence
########################################
seq(0, 1, length=11) # Return a sequence of 11 equaly spaced elements between 0 and 1
seq(1.575, 5.125, by=0.05) # Returns a sequence between 1.575 and 5.125 with increment 0.05


########################################
# 8. Generating random samples
########################################
sample(c(0,1), 10, replace=TRUE) # Sampling {0,1} 10 times with replacement
sample(c(1,2,3), 3) # Random permutation without replacement
letters[2] # Returns the second letter (lowercase) of the alphabet
LETTERS[2] # Returns the second letter (uppercase) of the alphabet
sample(letters[1:9], 5)


########################################
# 9. Transforming a vector
########################################
sort(a) # Sort vector into ascending (default)
order(a, decreasing = T) # Returns the permutation to rearrange elements in ascending or descending order
abs(d) # Return the absolute values of d
exp(d) # Return the exponential values of elements of d
log(abs(d)) # Return the log values of elements
