# ---------------------------------
# Descriptive Statistics Assignment
# Name: Tanay Kandpal
# ---------------------------------

# Exercise 1
students <- data.frame(
  Name = c("Aman", "Neha", "Ravi", "Pooja", "Karan"),
  Age = c(20, 21, 19, 22, 20),
  Marks = c(78, 65, 45, 88, 55)
)

mean(students$Marks)
max(students$Age)

students$Grade <- ifelse(
  students$Marks >= 75, "A",
  ifelse(students$Marks >= 50, "B", "C")
)

students

# Exercise 2
data(iris)

dim(iris)
head(iris)

mean(iris$Sepal.Length)
median(iris$Sepal.Length)
var(iris$Sepal.Length)
sd(iris$Sepal.Length)

table(iris$Species)

hist(iris$Petal.Length,
     main = "Histogram of Petal Length",
     xlab = "Petal Length")

boxplot(iris$Sepal.Width,
        main = "Boxplot of Sepal Width")
