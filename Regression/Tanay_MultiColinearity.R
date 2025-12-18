# =========================================================
# Exercise: Multicollinearity and Variance Inflation Factor
# =========================================================

# Load required library
library(car)

# 1. Simulate highly correlated predictors
set.seed(123)

n <- 100
X1 <- rnorm(n)
X2 <- X1 * 0.9 + rnorm(n, sd = 0.1)  # highly correlated with X1
Y  <- 3 + 2 * X1 + 2 * X2 + rnorm(n)

# Display correlation between predictors
cat("Correlation between X1 and X2:\n")
print(cor(X1, X2))

# ---------------------------------------------------------
# 2. Fit multiple linear regression model
# ---------------------------------------------------------
model <- lm(Y ~ X1 + X2)

cat("\nModel Summary:\n")
summary(model)

# ---------------------------------------------------------
# 3. Compute Variance Inflation Factor (VIF)
# ---------------------------------------------------------
cat("\nVariance Inflation Factor (VIF):\n")
print(vif(model))
