data(iris)

# 2. Fit the linear model
# Formula: Petal.Length = Intercept + Slope * Sepal.Length
iris_model <- lm(Petal.Length ~ Sepal.Length, data = iris)

print(summary(iris_model))

plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Regression",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     pch = 19,         
     col = "darkblue")

abline(iris_model, col = "red", lwd = 2)
