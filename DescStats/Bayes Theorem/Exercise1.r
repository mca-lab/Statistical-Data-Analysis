# Given probabilities
prior_disease <- 0.02   # Prior probability of having the disease (2%)
true_positive <- 0.95        
false_positive <- 0.05       

# Bayes' Theorem:
posterior_disease <- (true_positive * prior_disease) /
  ((true_positive * prior_disease) +
   (false_positive * (1 - prior_disease)))

cat("Posterior Probability that a person has the disease given a positive test:", posterior_disease,"\n")

