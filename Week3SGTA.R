library(tidyverse)
x <- c(1, 2, 3, 4, 5, 6)
x
typeof(x)
class(x)
str(x)
x <- 1:6
x
typeof(x)
class(x)
str(x)
x <- seq(1, 6, len = 6)
x
typeof(x)
class(x)
str(x)

x <- c(1L, 2L, 3L, 4L, 5L, 6L)
x
typeof(x)
class(x)
str(x)
x <- c(1, 2, 3, 4, 5L, 6L)
x
typeof(x)
class(x)
str(x)
x <- as.integer(x)
x
typeof(x)
class(x)
str(x)

x <- "This"
x
typeof(x)
class(x)
str(x)
x <- c("This", "unit", "is", "great.", "Do", "you", "agree?")
x
typeof(x)
class(x)
str(x)
x <- paste("This", "unit", "is", "great.", "Do", "you", "agree?", sep = "::")
x
typeof(x)
class(x)
str(x)
x <- paste("This", "unit", "is", "great.", "Do", "you", "agree?", sep = " ")
x
typeof(x)
class(x)
str(x)
cat("This", "unit", "is", "great.", "Do", "you", "agree?", sep = "\t")
cat("This", "unit", "is", "great.", "Do", "you", "agree?", sep = "\n")
cat("This", "unit", "is", "great.", "\n", "Do", "you", "agree?")
cat("This ", "unit ", "is ", "great.", "\n", "Do ", "you ", "agree? ", sep = "")
glue::glue("This unit is great. Do you agree?")
glue::glue("This unit is great.
Do you agree?")

1 > 0
1 < 0
1 <- 1
1 == 1
x <- c(TRUE, TRUE, FALSE)
x
typeof(x)
class(x)
str(x)
x <- c(T, T, F)
x
typeof(x)
class(x)
str(x)
x <- 1 > 0
x
typeof(x)
class(x)
str(x)
x <- c(1 > 0, 5 > 0, 5 > 10)
x
typeof(x)
class(x)
str(x)

x <- c("spring", "spring", "winter", "spring", "winter", "spring", "spring")
x
typeof(x)
class(x)
str(x)
attributes(x)

x <- factor(c("spring", "spring", "winter", "spring", "winter", "spring", "spring"))
x
typeof(x)
class(x)
str(x)
attributes(x)
table(x)
as.character(x)

x <- 1:6
attributes(x)
names(x)
names(x) <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
names(x)
attributes(x)
str(x)
class(x)
x
x <- 1:6
dim(x) <- c(2, 3)
attributes(x)
str(x)
class(x)
x

m <- matrix(1:6, nrow = 2)
str(m)
class(m)
m
m <- matrix(1:6, nrow = 2, byrow = TRUE)
str(m)
class(m)
m

x <- array(c(1:5, 11:15), dim = c(5, 5))
str(x)
class(x)
x
## R add to recycle values: we gave in input 10 values, but needed 25 (5*5)
x <- array(c(1:15, 21:30), dim = c(5, 5))
str(x)
class(x)
x
x <- array(c(1:15, 21:30, 101:125), dim = c(5, 5, 2))
str(x)
class(x)
x
x <- array(c(1:25, 101:125), dim = c(5, 5, 2))
str(x)
class(x)
x

x <- list(1:5, 11:15, c("a", "b", "c"))
str(x)
class(x)
x
x <- list(x1 = 1:5, x2 = 11:15, x3 = c("a", "b", "c"))
str(x)
class(x)
x
x <- list(x1 = 1:5, x2 = 11:15, x3 = list(y1 = "a", y2 = "b", y3 = "c"))
str(x)
class(x)
x

x <- data.frame(
  season = c("winter", "winter", "spring", "spring"),
  month = c("Jan", "Feb", "Apr", "Apr"),
  station = c("Sydney", "New Castle", "Sydney", "Melbourne"),
  temperature = c(14, 17, 26, 25)
)
str(x)
typeof(x)
class(x)
x
x <- tibble(
  season = c("winter", "winter", "spring", "spring"),
  month = c("Jan", "Feb", "Apr", "Apr"),
  station = c("Sydney", "Newcastle", "Sydney", "Melbourne"),
  temperature = c(14, 17, 26, 25)
)
str(x)
typeof(x)
class(x)
x
x <- tribble(
  ~season, ~month, ~station, ~temperature,
  "winter", "Jan", "Sydney", 14,
  "winter", "Feb", "Newcastle", 17,
  "spring", "Apr", "Sydney", 26,
  "spring", "Apr", "Newcastle", 25
)
glimpse(x)
typeof(x)
class(x)
x

x <- read_csv(file = "test.csv")
str(x)
glimpse(x)
typeof(x)
class(x)
x

x <- tribble(
  ~season, ~month, ~station, ~temperature,
  "winter", "Jan", "Sydney", 14,
  "winter", "Feb", "Newcastle", 17,
  "spring", "Apr", "Sydney", 26,
  "spring", "Apr", "Newcastle", 25
)
str(x)
typeof(x)
class(x)
x
write_csv(x, file = "my_data_file.csv")

# Vector
x <- c("spring", "spring", "winter", "spring", "winter", "spring", "spring")
x[2]
x[c(2, 3, 5)]
x[2] <- "summer"
x
x[-2]
x[c(T, T, F, F, F, T, T)]
# Matrices
x <- matrix(1:9, nrow = 3)
x
x[2, 3]
x[2, c(1, 3)]
x[2, 3] <- 9
x
x[1:2, 1]
x[, 1]
x[, 1, drop = FALSE]
x[-2, ]
x[-2, -c(2, 3)]
x[c(T, F, T), ]
# Data frames & tibbles
x <- tribble(
  ~season, ~month, ~station, ~temperature,
  "winter", "Jan", "Sydney", 14,
  "winter", "Feb", "Newcastle", 17,
  "spring", "Apr", "Sydney", 26,
  "spring", "Apr", "Newcastle", 25
)
x
x[2, 3]
x[2, c(1, 3)]
x[3, 3] <- "Melbourne"
x
x[1:4, 1]
x[, 1]
x %>%
  pull(1)
x %>%
  pull(season)
x[-2, ]
x[-2, -c(2, 3)]
x[c(T, F, T, T), ]
x$temperature
x$temperature[2]
x$temperature[2] <- 16
x
x <- as.data.frame(x)
x[, 1]
x[, 1, drop = FALSE]
# Lists
x <- list(1:5, 11:15, c("a", "b", "c"))
x
x[[1]]
x[[2]]
x[[3]][2]
x[[3]][c(2, 3)]
x <- list(x1 = 1:5, x2 = 11:15, x3 = c("a", "b", "c"))
x
x[[1]]

x$x2
x$x3[2]
x$x3[c(2, 3)]
x <- list(x1 = 1:5, x2 = 11:15, x3 = list(y1 = "a", y2 = "b", y3 = "c"))
x
x$x3$y2
x$x3$y2 <- "house"
x

1 + NA
x <- NA
x
str(x)
is.na(x)
NA == NA
is.na(NA) == is.na(NA)



install.packages("babynames")
library(babynames)

select(babynames, name)
select(babynames, name, sex)
select(babynames, name | year)
select(babynames, !prop)
select(babynames, -c(year, sex, prop))
select(babynames, name:n)
select(babynames, starts_with("n"))
# filter
filter(babynames, name == "Khaleesi")
filter(babynames, name == "Sea" | name == "Anemone")
filter(babynames, prop > 0.08)
filter(babynames, year == 1880, (n == 5 | n == 6))
filter(babynames, name %in% c("Acura", "Lexus", "Yugo"))
# arrange
arrange(babynames, n)
arrange(babynames, n, prop)
arrange(babynames, year, desc(prop))
arrange(babynames, desc(year), desc(prop))
# pipe %>%
babynames %>%
  filter(year == 2017, sex == "M") %>%
  select(name, n) %>%
  arrange(desc(n))
# summarise
babynames %>%
  filter(name == "Thomas", sex == "M") %>%
  summarise(total = sum(n), max = max(n), mean = mean(n))
babynames %>%
  filter(name == "Khaleesi") %>%
  summarise(year = first(year))
babynames %>%
  summarise(n = n(), distinct = n_distinct(name))

# group_by
babynames %>%
  group_by(year, sex) %>%
  summarise(total = sum(n)) %>%
  summarise(total = sum(total))
babynames %>%
  group_by(year, sex) %>%
  ungroup()
babynames %>%
  group_by(year, sex) %>%
  group_by(name)
babynames %>%
  group_by(name, sex) %>%
  summarise(total = sum(n)) %>%
  arrange(desc(total))
babynames %>% 
  group_by(sex, year) %>%
  arrange(desc(n))

# mutate
babynames %>%
  mutate(births = n / prop)
babynames %>%
  group_by(year) %>%
  mutate(year_total = sum(n)) %>%
  ungroup() %>%
  mutate(fraction = n / year_total) %>%
  group_by(name) %>%
  slice_max(fraction, n = 1)

table4a_long <- table4a %>%
  pivot_longer(c(`1999`, `2000`), names_to = "year", values_to = "cases")
table4a_long
table4a_long %>%
  pivot_wider(values_from = cases, names_from = year)

table4a

# barplot
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
ggplot(data = pressure) +
  geom_col(mapping = aes(x = temperature, y = pressure))
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color)) +
  facet_grid(clarity ~ cut)
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color)) +
  facet_grid(~cut)
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color)) +
  facet_grid(clarity ~ .)
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~cut, scales = "free_y")
