# Exercise-1
students <- data.frame(
  Name = c("Aman", "Riya", "Karan", "Simran", "Neha"),
  Age = c(20, 21, 19, 22, 20),
  Marks = c(80, 65, 45, 90, 72)
)
mean(students$Marks)
max(students$Age)
students$Grade <- ifelse(students$Marks >= 75, "A",
                         ifelse(students$Marks >= 50, "B", "C"))
students

#Exercise-2
nrow(iris)
ncol(iris)
head(iris)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
var(iris$Sepal.Length)
sd(iris$Sepal.Length)
table(iris$Species)
hist(iris$Petal.Length)
boxplot(iris$Sepal.Width)

#Exercise 3
prior <- 0.01          # Probability of disease (1%)
true_pos <- 0.95       # Sensitivity: P(test + | disease)
false_pos <- 0.05      # P(test + | no disease)
posterior <- (true_pos * prior) /
  ((true_pos * prior) + (false_pos * (1 - prior)))

posterior



