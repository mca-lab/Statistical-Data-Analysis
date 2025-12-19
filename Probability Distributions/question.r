# Probability Distributions in R

set.seed(1)


x_norm <- rnorm(1000, mean = 0, sd = 1)

hist(x_norm, probability = TRUE,
     main = "Normal Distribution",
     xlab = "X")
curve(dnorm(x, 0, 1), add = TRUE, col = "red")

print(pnorm(1, 0, 1))          # P(X ≤ 1)
print(1 - pnorm(1, 0, 1))      # P(X > 1)

dev.new()

### BINOMIAL DISTRIBUTION
x_bin <- rbinom(1000, size = 10, prob = 0.5)

hist(x_bin, probability = TRUE,
     main = "Binomial Distribution",
     xlab = "X")

print(dbinom(5, 10, 0.5))      # P(X = 5)
print(pbinom(5, 10, 0.5))      # P(X ≤ 5)

dev.new()

### POISSON DISTRIBUTION
x_pois <- rpois(1000, lambda = 3)

hist(x_pois, probability = TRUE,
     main = "Poisson Distribution",
     xlab = "X")

print(dpois(2, 3))             # P(X = 2)
print(ppois(2, 3))             # P(X ≤ 2)
