install.packages(c("devtools", "roxygen2", "testthat", "knitr"))

library(testthat)
expect_equal(5*2, 10)
expect_equal(5*2, 10+ 1e-7)
expect_equal(5*2, 10+ 1e-6)
expect_identical(2*2, 4+ 1e-8)

m <- function(x,y){
  return(x*y)
}
expect_error(m("2","3"), "non-numeric argument to binary operator")
expect_equal(m(2,3), 6)
expect_equal(m(2,c(2,3)), c(4,6))
expect_error(m(2,"3"), "non-numeric argument to binary operator")

is_greater_10 <- function(x){
  if (x > 10) "Not greater than 10"
}
expect_null(is_greater_10(9))
expect_identical(is_greater_10(11), "Not greater than 10")

install.packages("devtools")

library(devtools)
library(roxygen2)
library(knitr)

expect_equivalent(2*10, 20 + 1e-5)


has_devel()
