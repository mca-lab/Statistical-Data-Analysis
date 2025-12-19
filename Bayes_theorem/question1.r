# Bayes Theorem: Disease Testing Simulation

# Given values (chosen)
prior_disease <- 0.02          # P(D)
true_positive <- 0.95          # P(+ | D)
false_positive <- 0.05         # P(+ | not D)

# Bayes theorem calculation
posterior_disease <- (true_positive * prior_disease) /
  ((true_positive * prior_disease) +
   (false_positive * (1 - prior_disease)))

posterior_disease
print(posterior_disease)

