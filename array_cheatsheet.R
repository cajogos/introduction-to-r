########################################
# 1. Creating an array
########################################

x <- array(1:50, c(2, 5, 5)) # Creates an array with 5 matrices of dimensions 2 x 5
x


########################################
# 2. Accessing or extracting elements
########################################

x[1, 2, 3] # Returns the element on the 1st row, 2nd column of the 3rd matrix


########################################
# 3. Useful functions for an array
########################################

dim(x) # Returns the dimensions on the array

aperm(x) # Generalised transpose of x -> x[i, j, k] becomes x[k, j, i]

