# Law of Large Numbers using biased coin

set.seed(1)

p <- 0.7                 # probability of head
n <- 1000                # number of trials

samples <- rbinom(n, 1, p)
running_mean <- cumsum(samples) / (1:n)

plot(running_mean,
     type = "l",
     col = "blue",
     main = "Law of Large Numbers",
     xlab = "Number of Tosses",
     ylab = "Running Mean")

abline(h = p, col = "red", lwd = 2)



# Central Limit Theorem using sample means

sample_means <- replicate(
  1000,
  mean(rbinom(50, 1, p))
)

hist(sample_means,
     breaks = 30,
     probability = TRUE,
     col = "lightblue",
     main = "Central Limit Theorem",
     xlab = "Sample Mean")

# Overlay normal curve
x <- seq(min(sample_means), max(sample_means), length = 100)
lines(x, dnorm(x, mean(sample_means), sd(sample_means)),
      col = "red", lwd = 2)
