par(mfrow = c(1, 2))

# Law of Large Numbers

p <- 0.7            # Probability of "Heads" (Success)
n_trials <- 1000    # Total number of flips

# Generate 1000 random coin flips (0 or 1)
set.seed(123)       # For reproducibility
flips <- rbinom(n_trials, size = 1, prob = p)

# Calculate running mean: cumulative sum divided by the trial index
running_mean <- cumsum(flips) / (1:n_trials)

plot(running_mean, type = "l", col = "royalblue", lwd = 1.5,
     main = "Law of Large Numbers",
     xlab = "Number of Flips", ylab = "Running Sample Mean",
     ylim = c(0, 1))
abline(h = p, col = "red", lty = 2, lwd = 2) 
legend("bottomright", legend = c("Sample Mean", "True p (0.7)"),
       col = c("royalblue", "red"), lty = 1:2, cex = 0.8)



#Central Limit Theorem

n_per_sample <- 40       # Size of each sample
n_replications <- 1000   # Number of sample means to collect

# Use replicate() to take 1000 samples and calculate their means
sample_means <- replicate(n_replications, mean(rbinom(n_per_sample, 1, p)))

# Plot Histogram (prob = TRUE scales it for the density curve)
hist(sample_means, breaks = 20, prob = TRUE, col = "lightgray",
     main = "Central Limit Theorem",
     xlab = "Value of Sample Mean", border = "white")

# Calculate theoretical Normal Curve parameters
# Mean of means = p; Standard Error = sqrt(p*(1-p)/n)
theoretical_mean <- p
theoretical_sd   <- sqrt((p * (1 - p)) / n_per_sample)

# Overlay the Normal Curve using lines()
x_axis <- seq(min(sample_means), max(sample_means), length = 100)
y_axis <- dnorm(x_axis, mean = theoretical_mean, sd = theoretical_sd)
lines(x_axis, y_axis, col = "darkred", lwd = 2)

par(mfrow = c(1, 1))