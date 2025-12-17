# Bayes Theorem: Disease Testing

# Given probabilities
P_D <- 0.01          # Prior probability of disease
P_pos_given_D <- 0.95   # True positive rate
P_pos_given_notD <- 0.05  # False positive rate

# Probability of no disease
P_notD <- 1 - P_D

# Bayes theorem calculation
P_D_given_pos <- (P_pos_given_D * P_D) /
                 (P_pos_given_D * P_D + 
                  P_pos_given_notD * P_notD)

P_D_given_pos
