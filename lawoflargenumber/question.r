# Law of Large Numbers & Central Limit Theorem (Biased Coin)

set.seed(1)

p <- 0.7          # biased coin probability
n <- 10000

# LLN: running sample mean
samples <- rbinom(n, 1, p)
running_mean <- cumsum(samples) / seq_along(samples)

plot(running_mean, type = "l",
     xlab = "Number of Trials",
     ylab = "Running Mean",
     main = "Law of Large Numbers")

abline(h = p, col = "red")

# CLT: sample means
sample_means <- replicate(1000, mean(rbinom(50, 1, p)))
dev.new()

hist(sample_means, probability = TRUE,
     main = "Central Limit Theorem",
     xlab = "Sample Means")

x <- seq(min(sample_means), max(sample_means), length = 100)
lines(x, dnorm(x, mean(sample_means), sd(sample_means)), col = "red")
