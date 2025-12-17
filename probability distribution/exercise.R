# Normal Distribution
set.seed(1)

x <- rnorm(1000, mean = 0, sd = 1)

windows()
hist(x,
     probability = TRUE,
     main = "Normal Distribution (PDF)",
     xlab = "x",
     col = "lightblue")

curve(dnorm(x, mean = 0, sd = 1),
      add = TRUE, col = "red", lwd = 2)


# P(X < 1)
pnorm(1, mean = 0, sd = 1)

# P(-1 < X < 1)
pnorm(1, 0, 1) - pnorm(-1, 0, 1)



# Binomial Distribution
x <- rbinom(1000, size = 10, prob = 0.5)

windows()
hist(x,
     probability = TRUE,
     main = "Binomial Distribution (PMF)",
     xlab = "Number of Successes",
     col = "lightgreen")

k <- 0:10
lines(k, dbinom(k, size = 10, prob = 0.5),
      type = "h", col = "red", lwd = 2)


# P(X = 5)
dbinom(5, size = 10, prob = 0.5)

# P(X <= 4)
pbinom(4, size = 10, prob = 0.5)



# Poisson Distribution
x <- rpois(1000, lambda = 3)

windows()
hist(x,
     probability = TRUE,
     main = "Poisson Distribution (PMF)",
     xlab = "Counts",
     col = "orange")

k <- 0:max(x)
lines(k, dpois(k, lambda = 3),
      type = "h", col = "red", lwd = 2)

# P(X = 2)
dpois(2, lambda = 3)

# P(X <= 4)
ppois(4, lambda = 3)
