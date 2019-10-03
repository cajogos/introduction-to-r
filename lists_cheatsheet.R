########################################
# 1. Creating a list
########################################

L <- list(num = 1:5, letters[1:3], bool=T) # Creates a list with named and unamed arguments
L

########################################
# 2. Accessing or extracting elements
########################################

L$num # Returns the element named num in L
L[["num"]] # Same as above

L$a # Returns NULL as there is no element named a

L[[1]] # Returns the 1st element of L
L[[2]] # Returns the 2nd element of L
