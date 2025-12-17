# Exercise-1
students <- data.frame(
  Name = c("tanay", "Riya", "Komal", "khushi", "Nikita"),
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

#Exercise 7
set.seed(123)

n <- 200

x1 <- rnorm(n, mean = 50, sd = 10)      # predictor 1
x2 <- x1 + rnorm(n, 0, 2)               # predictor 2 strongly correlated with x1

cor(x1, x2)      # check correlation
y <- 3 + 2*x1 + 1*x2 + rnorm(n, 0, 3)
model <- lm(y ~ x1 + x2)
summary(model)
install.packages("car")     # only once
library(car)

vif(model)

#Exercise 8
#Normal Distribution
set.seed(123)
x_norm <- rnorm(1000, mean = 50, sd = 10)
hist(x_norm, freq = FALSE,
     main="Normal Distribution Histogram",
     xlab="Value")

curve(dnorm(x, mean = 50, sd = 10),
      col="blue", add=TRUE, lwd=2)
# P(X < 60)
pnorm(60, mean=50, sd=10)

# P(X > 40)
1 - pnorm(40, mean=50, sd=10)


#Binomial Distribution
x_binom <- rbinom(1000, size=10, prob=0.4)
hist(x_binom, freq=FALSE,
     main="Binomial Distribution PMF",
     xlab="Number of Successes")

# Overlay exact PMF points
values <- 0:10
points(values, dbinom(values, size=10, prob=0.4),
       col="red", pch=16)
# P(X = 5)
dbinom(5, size=10, prob=0.4)

# P(X ≤ 3)
pbinom(3, size=10, prob=0.4)

#Poisson Distribution
x_pois <- rpois(1000, lambda=4)
hist(x_pois, freq=FALSE,
     main="Poisson Distribution PMF",
     xlab="Counts")

# Overlay PMF
values <- 0:max(x_pois)
points(values, dpois(values, lambda=4),
       col="blue", pch=16)
# P(X = 3)
dpois(3, lambda=4)

# P(X ≤ 5)
ppois(5, lambda=4)

