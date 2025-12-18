# ---------------------------------
# Law of Large Numbers & CLT
# Using a biased coin
# Name: Tanay Kandpal
# ---------------------------------

set.seed(123)  # for reproducibility

# -----------------------------
# Parameters
# -----------------------------
p <- 0.7        # probability of heads (biased coin)
n <- 10000      # number of trials

# -----------------------------
# Law of Large Numbers (LLN)
# -----------------------------
# Simulate coin tosses
coin_tosses <- rbinom(n, size = 1, prob = p)

# Running sample mean
running_mean <- cumsum(coin_tosses) / seq_len(n)

# Plot LLN
plot(
  running_mean,
  type = "l",
  col = "blue",
  lwd = 2,
  main = "Law of Large Numbers",
  xlab = "Number of Tosses",
  ylab = "Running Sample Mean"
)
abline(h = p, col = "red", lwd = 2, lty = 2)

# -----------------------------
# Central Limit Theorem (CLT)
# -----------------------------
# Generate 1000 sample means
sample_means <- replicate(
  1000,
  mean(rbinom(50, size = 1, prob = p))
)

# Histogram of sample means
hist(
  sample_means,
  probability = TRUE,
  col = "lightgray",
  main = "Central Limit Theorem",
  xlab = "Sample Mean"
)

# Overlay normal curve
x <- seq(min(sample_means), max(sample_means), length = 100)
lines(
  x,
  dnorm(x, mean = mean(sample_means), sd = sd(sample_means)),
  col = "red",
  lwd = 2
)
