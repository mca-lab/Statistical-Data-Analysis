# 1. Number of rows and columns in the iris dataset.
nrow(iris)

ncol(iris)

# 2. Get the first 6 rows.
head(iris)


# 3. Find the mean, median, variance, and standard deviation of Sepal.Length.
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
var(iris$Sepal.Length)
sd(iris$Sepal.Length)


# 4. Find how many flowers belong to each species.
table(iris$Species)


# 5. Draw a histogram of Petal.Length and a boxplot of Sepal.Width.
windows()
hist(
  iris$Petal.Length,
  main = "Histogram of Petal Length",
  xlab = "Petal Length",
  col = "lightblue"
)

windows()
boxplot(
  iris$Sepal.Width,
  main = "Boxplot of Sepal Width",
  col = "lightgreen"
)
