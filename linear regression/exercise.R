# Simple Linear Regression (OLS)
# Predicting Petal.Length from Sepal.Length

model <- lm(Petal.Length ~ Sepal.Length, data = iris)

summary(model)


windows()

plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Petal Length vs Sepal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     pch = 19,
     col = "blue")


abline(model, col = "red", lwd = 2)
