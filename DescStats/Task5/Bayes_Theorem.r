prior_disease <- 0.01       
true_positive_rate <- 0.99 
false_positive_rate <- 0.05 

prior_no_disease <- 1 - prior_disease

prob_positive_test <- (true_positive_rate * prior_disease) + 
                      (false_positive_rate * prior_no_disease)

posterior_prob <- (true_positive_rate * prior_disease) / prob_positive_test

print("Scenario Parameters:")
paste("Prior Probability (Prevalence):", prior_disease)
paste("True Positive Rate (Sensitivity):", true_positive_rate)
paste("False Positive Rate:", false_positive_rate)

paste("Result:\n")
paste("The posterior probability that a person has the disease given a positive test is:", 
    round(posterior_prob, 4))
paste("Percentage:", round(posterior_prob * 100, 2))