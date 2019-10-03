########################################
# 1. Creating a data frame
########################################

v1 <- sample(1:12, 30, replace = T)
v2 <- sample(LETTERS[1:10], 30, replace = T)
v3 <- runif(10) # 10 independent realisations of the uniform distribution over [0,1]
v4 <- rnorm(15) # 15 independent realisations of the normal distribution with mean 0 and variance 1

v1; v2; v3; v4

df <- data.frame(v1, v2, v3, v4) # Creates a data frame with 30 observations. v3 and v4 are replicated to the lenth of v1
df


########################################
# 2. Accessing or extracting elements: The command to access matrices elements are also available for data frames.
########################################

df$v2 # Returns the observations of variable named v2
df[["v1"]] # Returns the observations of variable named v1


########################################
# 3. Data conversion
########################################

M <- matrix(1:15, nrow = 3)
M <- as.data.frame(M) # Convert M into a data frame
is.data.frame(M)
N <- as.matrix(df) # Convert df into a matrix (type character)


########################################
# 4. Dealing with data
########################################

data() # Opens a window listing all data frames available in R
data(women) # Load the data frame women
names(women) # Display variable names of data frame women
attach(women) # Database women attached to R: Objects in database can be accessed by simply giving their names
height # Returns women$height - women is now attached to R
