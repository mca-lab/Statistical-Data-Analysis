# Simple Linear Regression (OLS) using iris dataset

data(iris)

# Fit linear model
model <- lm(Petal.Length ~ Sepal.Length, data = iris)

# Model summary
summary(model)

# Interpretation:
# Intercept: Expected Petal.Length when Sepal.Length = 0
# Slope: Change in Petal.Length for one unit increase in Sepal.Length

# Plot scatter and regression line
plot(iris$Sepal.Length, iris$Petal.Length,
     xlab = "Sepal Length",
     ylab = "Petal Length",
     main = "Simple Linear Regression")

abline(model, col = "red")
