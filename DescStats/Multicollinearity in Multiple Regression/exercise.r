# highly correlated predictors
set.seed(123)

n <- 100

X1 <- rnorm(n, mean = 50, sd = 10)

X2 <- X1 + rnorm(n, mean = 0, sd = 1)

Y <- 5 + 2*X1 + 2*X2 + rnorm(n, mean = 0, sd = 5)

data <- data.frame(Y, X1, X2)

correlation <- cor(data$X1, data$X2)
cat("Correlation between X1 and X2:", correlation, "\n\n")

#Fit multiple linear regression model
model <- lm(Y ~ X1 + X2, data = data)
summary(model)

#Compute Variance Inflation Factor (VIF)
# Load car library
library(car)

vif_values <- vif(model)
cat("\nVariance Inflation Factor (VIF):\n")
print(vif_values)
