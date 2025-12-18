# =========================================================
# Exercise: Normal, Binomial, and Poisson Distributions
# =========================================================

set.seed(123)

# ---------------------------------------------------------
# 1. NORMAL DISTRIBUTION
# ---------------------------------------------------------
normal_sample <- rnorm(1000, mean = 50, sd = 10)

cat("Normal Distribution Sample Summary:\n")
summary(normal_sample)

hist(
  normal_sample,
  probability = TRUE,
  main = "Normal Distribution",
  xlab = "Values",
  col = "lightblue"
)

x <- seq(min(normal_sample), max(normal_sample), length.out = 100)
lines(x, dnorm(x, mean = 50, sd = 10), col = "red", lwd = 2)

# Probabilities
cat("\nNormal Distribution Probabilities:\n")
cat("P(X < 40): ", pnorm(40, mean = 50, sd = 10), "\n")
cat("P(X > 60): ", 1 - pnorm(60, mean = 50, sd = 10), "\n")

# ---------------------------------------------------------
# 2. BINOMIAL DISTRIBUTION
# ---------------------------------------------------------
binom_sample <- rbinom(1000, size = 10, prob = 0.5)

cat("\nBinomial Distribution Sample Summary:\n")
summary(binom_sample)

hist(
  binom_sample,
  probability = TRUE,
  main = "Binomial Distribution",
  xlab = "Number of Successes",
  col = "lightgreen"
)

k <- 0:10
points(k, dbinom(k, size = 10, prob = 0.5), col = "red", pch = 19)

# Probabilities
cat("\nBinomial Distribution Probabilities:\n")
cat("P(X = 5): ", dbinom(5, size = 10, prob = 0.5), "\n")
cat("P(X ≤ 3): ", pbinom(3, size = 10, prob = 0.5), "\n")

# ---------------------------------------------------------
# 3. POISSON DISTRIBUTION
# ---------------------------------------------------------
poisson_sample <- rpois(1000, lambda = 3)

cat("\nPoisson Distribution Sample Summary:\n")
summary(poisson_sample)

hist(
  poisson_sample,
  probability = TRUE,
  main = "Poisson Distribution",
  xlab = "Event Count",
  col = "lightcoral"
)

k <- 0:max(poisson_sample)
points(k, dpois(k, lambda = 3), col = "blue", pch = 19)

# Probabilities
cat("\nPoisson Distribution Probabilities:\n")
cat("P(X = 2): ", dpois(2, lambda = 3), "\n")
cat("P(X ≤ 4): ", ppois(4, lambda = 3), "\n")
