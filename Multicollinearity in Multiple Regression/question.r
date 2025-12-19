# Multicollinearity in Multiple Regression

# Install & load car package (run install once)
install.packages("car")
library(car)

set.seed(1)

# Simulate highly correlated predictors
x1 <- rnorm(100)
x2 <- x1 + rnorm(100, sd = 0.1)
y  <- 3 + 2*x1 + 2*x2 + rnorm(100)

# Correlation between predictors
print(cor(x1, x2))

# Fit multiple linear regression model
model <- lm(y ~ x1 + x2)

# Compute VIF
print(vif(model))

# Explanation:
# High multicollinearity (high correlation, high VIF) inflates standard errors,
# makes coefficients unstable, and reduces their statistical significance.
