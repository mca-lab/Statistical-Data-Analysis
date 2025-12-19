# NORMAL DISTRIBUTION
# Parameters: mean (mu) and standard deviation (sigma)
set.seed(123)
n_norm <- 1000; mu <- 50; sigma <- 10

samples_norm <- rnorm(n_norm, mean = mu, sd = sigma)

hist(samples_norm, breaks = 30, probability = TRUE, 
     main = "Normal Distribution (mu=50, sigma=10)", 
     col = "lightblue", xlab = "Value")
curve(dnorm(x, mean = mu, sd = sigma), add = TRUE, col = "red", lwd = 2)

p1_norm <- pnorm(40, mean = mu, sd = sigma) # P(X <= 40)
p2_norm <- pnorm(60, mean = mu, sd = sigma) - pnorm(40, mean = mu, sd = sigma) # P(40 < X < 60)

print("Normal Distribution")
paste("P(X <= 40):", p1_norm)
paste("P(40 < X < 60):", p2_norm)


# BINOMIAL DISTRIBUTION
# Parameters: size (number of trials) and prob (probability of success)
n_trials <- 20; p_success <- 0.5; n_samples <- 1000

samples_binom <- rbinom(n_samples, size = n_trials, prob = p_success)

counts_binom <- table(factor(samples_binom, levels = 0:n_trials)) / n_samples
barplot(counts_binom, main = "Binomial Distribution (n=20, p=0.5)", 
        col = "lightgreen", xlab = "Number of Successes", ylab = "Probability")

p1_binom <- dbinom(10, size = n_trials, prob = p_success) # P(X = 10)
p2_binom <- pbinom(8, size = n_trials, prob = p_success)  # P(X <= 8)

print("Binomial Distribution")
paste("P(X = 10):", p1_binom)
paste("P(X <= 8):", p2_binom)


# --- 3. POISSON DISTRIBUTION (Discrete) ---
# Parameters: lambda (mean rate of occurrence)
lambda_val <- 4; n_samples_pois <- 1000

samples_pois <- rpois(n_samples_pois, lambda = lambda_val)

counts_pois <- table(factor(samples_pois, levels = 0:max(samples_pois))) / n_samples_pois
barplot(counts_pois, main = "Poisson Distribution (lambda = 4)", 
        col = "salmon", xlab = "Number of Events", ylab = "Probability")

p1_pois <- dpois(3, lambda = lambda_val)    # P(X = 3)
p2_pois <- 1 - ppois(5, lambda = lambda_val) # P(X > 5)

print("Poisson Distribution")
paste("P(X = 3):", p1_pois)
paste("P(X > 5):", p2_pois)