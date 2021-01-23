# Data Types
# The variables are assigned with R-objects and the type of the R-object becomes
# the data types of the variable.

# There are a number of R-Objects types:
# - Vectors
# - Lists
# - Matrices
# - Arrays
# - Factors
# - Data Frames

# VECTORS 
# (A vector is the simplest type of data structure in R.)
# (A vector is a sequence of data elements of the same basic type)
# Examples:

v1 = "Nazhim Kalam" # 'character' vectors are strings
print(class(v1))

v2 = 10           # 'numeric' vectors are numbers (integers, decimals etc...)
print(class(v2))

v3 = 5.6
print(class(v3))
  
v4 = TRUE        # 'logical' vectors are Booleans either (True or False)
print(class(v4))

# So far we were working with (Single Value Vector) now lets work on 
# (Multiple value)

apple = c('red', 'blue', 'green') # concatenate but can use as a list as well
print(class(apple))
print(apple[3])

# LISTS
# A list is an R-Object which can contain many different types of elements inside
# it like vectors, functions and even another list inside it.

l1 = list(c('a','b','c'), "Nazhim", 10.3, TRUE, sin)
print(class(l1))


# MATRICES


# ARRAYS


# FACTORS


# DATA FRAMES

 