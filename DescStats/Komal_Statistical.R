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

# Exercise 4
p <- 0.3     # biased coin, P(heads)=0.3
n <- 5000
samples <- rbinom(n, size=1, prob=p)
running_mean <- cumsum(samples) / 1:n
plot(running_mean, type="l",
     xlab="Number of trials",
     ylab="Running sample mean",
     main="Law of Large Numbers")
abline(h = p, col="red")   # true mean

m <- 1000      # generate 1000 sample means
sample_means <- replicate(m, mean(rbinom(40, 1, p)))
hist(sample_means, freq = FALSE,
     main = "Sampling Distribution of Mean (CLT)")
curve(dnorm(x, mean = p, sd = sqrt(p*(1-p)/40)),
      add = TRUE, col="blue", lwd=2)

#Exercise 5
model <- lm(Petal.Length ~ Sepal.Length, data = iris)
summary(model)
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Petal.Length vs Sepal.Length",
     xlab = "Sepal Length",
     ylab = "Petal Length")
abline(model, col = "red", lwd = 2)

#Exercise 6
A <- matrix(c(1,2,3,4), nrow = 2)
B <- matrix(c(5,6,7,8), nrow = 2)

A
B
A + B
A %*% B
t(A)
det(A)
solve(A)

#


