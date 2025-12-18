# Load iris dataset
data(iris)

model <- lm(Petal.Length ~ Sepal.Length, data = iris)

summary(model)

cat("Interpretation:\n")
cat("Intercept: Expected Petal.Length when Sepal.Length is 0\n")
cat("Slope: Change in Petal.Length for one unit increase in Sepal.Length\n\n")

plot(
  iris$Sepal.Length,
  iris$Petal.Length,
  main = "Regression of Petal Length on Sepal Length",
  xlab = "Sepal Length",
  ylab = "Petal Length",
  col = "blue",
  pch = 16
)

abline(model, col = "red", lwd = 2)
