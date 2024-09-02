library(tidyverse)

# Hypothesis function
hypothesis <- function(){
  cat("Null Hypothesis: β = 0", "Alternative Hypothesis: β ≠ 0", sep = '\n')
}

# Assumptions function
assumptions <- function(filename){
  data <- read.csv(filename)  # Read the CSV file
  linearmodel <- lm(formula = Y ~ X, data = data)  # Fit the linear model
  par(mfrow=c(1,3))  # Create a setup for 2x2 plots 
  plot(data$X, data$Y, main = "X vs Y", xlab = 'X', ylab = 'Y')
  plot(linearmodel$residuals, linearmodel$fitted.values, main = "Residuals vs Fitted Values",
       xlab = 'Fitted Values', ylab = 'Residuals')
  hist(linearmodel$residuals, main = "Histogram of Regression Residuals", xlab = "Residuals")
  # Plot X vs Y, residuals vs fitted values and the histogram of regression residuals
}

# Fit function
fit <- function(filename){
  data <- read.csv(filename)  # Read the CSV file
  linearmodel <- lm(formula = Y ~ X, data = data)  # Fit the linear model
  summary <- summary(linearmodel)  # Create a summary for the linear model
  fitlist <- list(
    summary$coefficients[2,1],  # Estimated slope (β̂)
    summary$coefficients[2,1] - 1.96 * summary$coefficients[2,2],  # Lower bound of 95% CI for β
    summary$coefficients[2,1] + 1.96 * summary$coefficients[2,2],  # Upper bound of 95% CI for β
    summary$coefficients[2,3],  # t-value
    summary$df[2],  # Degrees of Freedom
    summary$coefficients[2,4]  # P-value
  )  # Generate a list for the summary statistics
  class(fitlist) <- "mylm"  # Set 'mylm' as the list class
  return(fitlist)  # Return the list
}

# Decision function
decision <- function(fit1){
  UseMethod("decision")  # Choose the decision-making method
}

decision.mylm <- function(fit1){
  if (fit1[[6]] <= 0.05) {
    return("Reject the null hypothesis in favour of the alternative hypothesis.")
  } else {
    return("Retain the null hypothesis.")
  }
}

# Conclusion function
conclusion <- function(fit1){
  UseMethod("conclusion")  # Choose the method for conclusions
}

conclusion.mylm <- function(fit1){
  if (fit1[[6]] > 0.05) {
    return("As the P-value is greater than 0.05, the result is statistically insignifican and we retain the null hypothesis. We can conclude that β = 0, meaning there is no linear relationship between X and Y.")
  } else {
    return("As the P-value is less than 0.05, the result is statistically significant and we reject the null hypothesis in favour of the alternative hypothesis. We can conclude that β ≠ 0 and therefore there is a linear relationship between X and Y.")
  }
}

# mytest function
mytest <- function(filename){
  fit1 <- fit(filename)  # Execute the function to fit the model and obtain summary statistics
  assumptions(filename)  # Generate assumption plots
  cat(hypothesis(), "\n",
      "Linear Regression Report","\n",
      "Estimated β:", fit1[[1]], "\n",
      "CI (95%):", fit1[[2]], ",", fit1[[3]], "\n",
      "T-value:", fit1[[4]], "\n",
      "Degrees of Freedom:", fit1[[5]], "\n",
      "P-value:", fit1[[6]],"\n", "\n",
      "Decision:", decision(fit1), "\n", "\n",
      "Conclusion:", conclusion(fit1), "\n")
}

# Conduct the tests from the file names
mytest("A1_Ex3_signif.csv")
mytest("A1_Ex3_not_signif.csv")
