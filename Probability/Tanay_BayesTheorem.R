# ---------------------------------
# Bayes Theorem - Disease Testing
# Name: Tanay Kandpal
# ---------------------------------

# Given probabilities
prior_disease <- 0.01        # P(D) = 1% population has disease
true_positive <- 0.95        # P(+ | D)
false_positive <- 0.05       # P(+ | not D)

# Probability of positive test
prob_positive <- (true_positive * prior_disease) +
                 (false_positive * (1 - prior_disease))

# Posterior probability using Bayes Theorem
posterior_disease <- (true_positive * prior_disease) / prob_positive

# Output
cat("Prior probability of disease:", prior_disease, "\n")
cat("True positive rate:", true_positive, "\n")
cat("False positive rate:", false_positive, "\n")
cat("Posterior probability of disease given positive test:",
    posterior_disease, "\n")
