# =========================================================
# Exercise 1: Simple Linear Regression using iris dataset
# Predicting Petal.Length from Sepal.Length
# =========================================================

# 1. Load dataset
data(iris)

# 2. Fit the linear regression model
model <- lm(Petal.Length ~ Sepal.Length, data = iris)

# 3. Display model summary
summary(model)

# ---------------------------------------------------------
# Interpretation of Results:
#
# Intercept:
# The intercept represents the expected Petal.Length when
# Sepal.Length is equal to 0. Since a Sepal.Length of 0 cm
# is not biologically meaningful, the intercept serves as
# a mathematical reference rather than a practical value.
#
# Slope:
# The slope represents the change in Petal.Length for every
# 1 cm increase in Sepal.Length. A positive slope indicates
# that flowers with longer sepals tend to have longer petals,
# confirming a positive linear relationship.
# ---------------------------------------------------------

# 4. Visualization: Scatter plot with regression line
plot(
  iris$Sepal.Length,
  iris$Petal.Length,
  main = "Petal Length vs Sepal Length",
  xlab = "Sepal Length (cm)",
  ylab = "Petal Length (cm)",
  pch = 19,
  col = "blue"
)

abline(model, col = "red", lwd = 2)
