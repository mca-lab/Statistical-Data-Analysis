
set.seed(123)

# Generate random samples
normal_data <- rnorm(1000, mean = 50, sd = 10)

# Histogram with PDF
hist(
  normal_data,
  probability = TRUE,
  main = "Normal Distribution",
  xlab = "Values",
  col = "lightgray",
  border = "black"
)

x <- seq(min(normal_data), max(normal_data), length = 100)
lines(x, dnorm(x, mean = 50, sd = 10), col = "red", lwd = 2)

# Probabilities
p1_norm <- pnorm(60, mean = 50, sd = 10)           
p2_norm <- 1 - pnorm(40, mean = 50, sd = 10)       

cat("Normal Distribution:\n")
cat("P(X ≤ 60) =", p1_norm, "\n")
cat("P(X > 40) =", p2_norm, "\n\n")


# Generate random samples
binom_data <- rbinom(1000, size = 10, prob = 0.4)

# PMF plot
values <- 0:10
barplot(
  dbinom(values, size = 10, prob = 0.4),
  names.arg = values,
  main = "Binomial Distribution (PMF)",
  xlab = "Number of Successes",
  ylab = "Probability",
  col = "lightblue"
)

# Probabilities
p1_binom <- dbinom(3, size = 10, prob = 0.4)        
p2_binom <- pbinom(5, size = 10, prob = 0.4)        

cat("Binomial Distribution:\n")
cat("P(X = 3) =", p1_binom, "\n")
cat("P(X ≤ 5) =", p2_binom, "\n\n")


# Generate random samples
pois_data <- rpois(1000, lambda = 3)

# PMF plot
k <- 0:10
barplot(
  dpois(k, lambda = 3),
  names.arg = k,
  main = "Poisson Distribution (PMF)",
  xlab = "Number of Events",
  ylab = "Probability",
  col = "lightgreen"
)

# Probabilities
p1_pois <- dpois(2, lambda = 3)     
p2_pois <- ppois(4, lambda = 3)     

cat("Poisson Distribution:\n")
cat("P(X = 2) =", p1_pois, "\n")
cat("P(X ≤ 4) =", p2_pois, "\n")
