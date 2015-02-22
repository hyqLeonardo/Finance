OLS <- function(data, x, y) {
  ols <- lm(data[, y] ~ data[, x])
  
  y_mean <- mean(data[, y])
  TSS <- sum((data[, y] - y_mean)^2)
  ESS <- sum((ols$fitted.values - y_mean)^2)
  
  R_sqr <- ESS/TSS
}