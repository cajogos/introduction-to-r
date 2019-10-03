########################################
# 1. Creating a matrix
########################################
a <- 1:20
b <- sample(1:10, 20, replace=T)

M <- matrix(a, nrow=5) # Create a numerical matrix M from a with 5 rows; filling it by columns
N <- matrix(a, nrow=5, byrow=T) # Create a numerical matrix N from a with 5 rows; filling it by rows
O <- matrix(b, ncol=10) # Create a numerical matrix O from b with 10 columns; filling it by columns
P <- matrix(NA, 2, 5) # Create a 2x5 matrix P filled with NA
M; N; O; P


########################################
# 2. Accessing or extracting elements
########################################
M[3,2] # Return element on the 3rd row and 2nd column of M
M[5,] # Return 5th row of M
M[,2] # Return 2nd column of M
M[c(1,3,4),] # Return the given rows
M[,c(1,4)] # Return the given columns
M[-2,] # Remove the 2nd row
M[,-3] # Remove the 3rd column
M[-c(1,3),] # Remove the given rows
M[,-c(2,4)] # Remove the given columns
O > 5 # Returns a matrix of booleans where element [i,j] is TRUE if condition is met
O[O < 5] <- 0 # Set to 0 all elements less than 5
diag(M) # Return the diagonal of the matrix
diag(M) <- 1 # Set to 1 the diagonal of the matrix


########################################
# 3. Useful functions for a matrix
########################################
dim(M) # Returns the dimensions of the matrix
nrow(M) # Returns the number of rows
ncol(M) # Returns the number of columns
Q <- t(N) # Transposes the matrix N into Q
colSums(M) # Returns the sums of the columns
rowSums(M) # Returns the sums of the rows


########################################
# 4. Operations with a scalar
########################################
3 * O # Product by a scalar (each component is multiplied by 3)
Q - 4 # Subtraction of a scalar (each component is subtracted by 4)


########################################
# 5. Operations between matrices: R controls dimension adequacy!
########################################
M * N # Element-wise multiplication between M and N
M %*% Q # Matrix product between M and Q
M * Q # Invalid because dimensions are incompatible! (Element-wise product)
M %*% N # Invalid because dimensions are incompatible! (Matrix product)
rbind(M, N) # Vertical concatenation of matrices M and N
cbind(M, N) # Horizontal concatenation of matrics M and N
