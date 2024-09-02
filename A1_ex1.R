library(tidyverse)
library(dplyr)

# Question 1
X <- read.csv("A1_Ex1.csv") # Read the CSV file

# Question 2
str(X) # Find the structure of the data

# Question 3
sum(X$expenditure) # Sum all of the monthly expenditures

# Question 4
julexp <- X %>% filter(month == "Jul") %>% 
  select(expenditure) %>% 
  sum() # Sum the expenditures in July
julexp

# Question 5
mayraintexp <- X %>% filter(month == "May", weather == "rainy") %>% 
  select(expenditure) %>%
  sum() # Sum the expenditures on days in May when it is rainy
mayraintexp

# Question 6
maxexp <- X %>% filter(expenditure == max(expenditure, na.rm = TRUE)) # Find the row with the highest expenditure
maxrow$month # Extract the month in which it occurred, from that row





