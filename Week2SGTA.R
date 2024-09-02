x <- 1
x == 1
x > 1
log(x)
if (x == 1) log(x)
if (x > 1) log(x)

foo <- function(x) {
  if (x > 2) {
    "a"
  } else if (x < 2) {
    "b"
  } else if (x == 1) {
    "c"
  } else {
    "d"
  }
}
foo(1)

clean <- function(x) {
  if (x == -99) NA
  if (x == ".") NA
  if (x == "NaN") NA
  x
}
clean(-99)

clean2 <- function(x) {
  if(x %in% c(-99, ".", "NaN", "")) {
    NA
  } else {x}
}

clean2(-99)

clean3 <- function(x) {
  if(x == -99 || x == "." || x == "NaN" || x == "") {
    NA
} else {x}
  
}

clean3(-99)

impatient_square <- function(x) {
  return(x)
  xˆ2
}
impatient_square(3)

clean4 <- function(x) {
  if(x %in% c(-99, ".", "NaN", "")) {
   x <- NA
  }
  return(x)
}

clean4(-99)


immovable_square <- function(x) {
  if(x == 1) {
  stop("I refuse to proceed.")
  }
  x^2
}
immovable_square(2)

n <- 1
while (n <= 5) {
  print(n)
  n <- n + 1
}
is_prime <- function(x) {
  n <- 2
  repeat {
    print(n)
    if (n == x) {
      return(TRUE)
    }
    if (x %% n == 0) {
      return(FALSE)
    }
    n <- n + 1
  }
}
is_prime(4)























