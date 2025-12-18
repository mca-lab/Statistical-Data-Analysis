set.seed(123)

p <- 0.7          # Probability of Heads (biased coin)
n <- 1000         # Number of trials
num_samples <- 1000  

# Simulate coin tosses (1 = Head, 0 = Tail)
coin_tosses <- rbinom(n, size = 1, prob = p)

# Running sample mean
running_mean <- cumsum(coin_tosses) / seq_len(n)

plot(
  running_mean,
  type = "l",
  col = "blue",
  lwd = 2,
  xlab = "Number of Tosses",
  ylab = "Running Sample Mean",
  main = "Law of Large Numbers (Biased Coin)"
)
abline(h = p, col = "red", lwd = 2, lty = 2)
legend(
  "topright",
  legend = c("Running Mean", "True Probability"),
  col = c("blue", "red"),
  lwd = 2,
  lty = c(1, 2)
)

# Generate 1000 sample means
sample_means <- replicate(
  num_samples,
  mean(rbinom(n, size = 1, prob = p))
)

hist(
  sample_means,
  probability = TRUE,
  col = "lightgray",
  border = "black",
  main = "Central Limit Theorem",
  xlab = "Sample Mean"
)

x <- seq(min(sample_means), max(sample_means), length = 100)
lines(
  x,
  dnorm(x, mean = mean(sample_means), sd = sd(sample_means)),
  col = "red",
  lwd = 2
)
