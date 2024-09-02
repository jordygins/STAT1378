round(3.14159)
round(3.14159, 2)
round(x = 3.14159, digits = 2)
x <- 1:10
mean(x)
round(mean(x))
round(mean(x), digits = 0)
round(mean(x), digits = 2)

my_func <- function(x) {
  x <- x + 2
  mean(x)
}
my_func(1:10)
my_func(1:5)

install.packages("janitor")
library("janitor")
x <- c(1, 2, 2, 2, 3, 3)
tabyl(x)

norm1 <- rnorm(100)
norm2 <- rnorm(10, mean = 1, sd = 2.5)
hist(norm1, breaks = "Sturges")
plot(norm1)
warnings()
help(hist)
help(geom_col)


func <- function(x, k) {
x^k
  }

return <- func(1:10, 3)
plot(return)

plot(func)
help(plot)

func2(x, k, cols) {
  x^k
  x^(k+1)
}

func2(1:10, 2)


plotlines <- function(x, k, cols = c("red", "blue")) {
  library(ggplot2)
  
  data <- data.frame(
    g = x,
    y1 = x^k,
    y2 = x^(k + 1)
  )
  
  ggplot(data, aes(x = g)) +
    geom_line(aes(y = y1, colour = "y1"), size = 1) +
    geom_line(aes(y = y2, colour = "y2"), size = 1) +
    scale_colour_manual(values = c('y1' = "red", 'y2' = "blue")) +
    labs(y = 'y')
}

# Example usage:
x <- seq(1, 10, by = 0.001)
k <- 2
plotlines(x, k)

help("scale_colour_manual")

