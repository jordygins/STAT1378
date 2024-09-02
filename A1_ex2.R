library(tidyverse)
set.seed(2048) # Set seed to allow for data reproduction

x <- list() # Initialise a list

for(n in 1:100) { # Add names and vectors into the list
  name = paste("n", n, sep = "")
  vect = rnorm(5, mean = 20, sd = 10)
  x[[name]] = vect
}

x

str(x) # Find the structure of x

sum <- vector(length = 100) # Intialise an empty vector

for(n in 1:100) { 
  sum[n] = sum(x[[n]]) # Sum each vector values
}
sum

M <- matrix(NA, nrow = 100, ncol = 5)  # Initialize an empty matrix

for(n in 1:100) {
  M[n,] <- x[[n]]  # Fill each row of M with the vector from each slot in X
}

M

Msums <- list() # Create a list

for(n in 1:5) { # Sum the values of each column 
  name = paste('Column Sum', n, sep = ' ')
  Msums[[name]] = sum(M[,n])
}

Msums




