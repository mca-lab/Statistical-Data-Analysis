# 1. Create a data frame with 5 students
students <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Age = c(20, 22, 21, 23, 20),
  Marks = c(85, 67, 45, 78, 52)
)

# Display the data frame
print("Original Data Frame:")
print(students)

# 2. Find average marks
average_marks <- mean(students$Marks)
cat("Average Marks:", average_marks, "\n")

# Find maximum age
maximum_age <- max(students$Age)
cat("Maximum Age:", maximum_age, "\n")

# 3. Add Grade column based on marks
students$Grade <- ifelse(
  students$Marks >= 75, "A",
  ifelse(students$Marks >= 50 & students$Marks < 75, "B", "C")
)

# Display updated data frame
print("Data Frame with Grades:")
print(students)

 

#Exercise 2
# Load the iris dataset
data(iris)

# 1. Find the number of rows and columns
cat("Number of rows:", nrow(iris), "\n")
cat("Number of columns:", ncol(iris), "\n")

# 2. Get the first 6 rows
head(iris)

# 3. Find the mean, median, variance, and standard deviation of Sepal.Length
mean_sepal <- mean(iris$Sepal.Length)
median_sepal <- median(iris$Sepal.Length)
var_sepal <- var(iris$Sepal.Length)
sd_sepal <- sd(iris$Sepal.Length)

cat("Mean of Sepal.Length:", mean_sepal, "\n")
cat("Median of Sepal.Length:", median_sepal, "\n")
cat("Variance of Sepal.Length:", var_sepal, "\n")
cat("Standard Deviation of Sepal.Length:", sd_sepal, "\n")

# 4. Find how many flowers belong to each species
table(iris$Species)

# 5. Draw a histogram of Petal.Length
hist(iris$Petal.Length,
     main = "Histogram of Petal.Length",
     xlab = "Petal Length",
     col = "lightblue",
     border = "black")

# Draw a boxplot of Sepal.Width
boxplot(iris$Sepal.Width,
        main = "Boxplot of Sepal.Width",
        ylab = "Sepal Width",
        col = "lightgreen")



# Question solved 3
# Parameters
prior_disease <- 0.01        # P(D), prior probability of disease (5%)
true_positive <- 0.95        # P(T+|D), sensitivity
false_positive <- 0.05       # P(T+|¬D), false positive rate

# Complement probability (no disease)
prior_no_disease <- 1 - prior_disease

# Bayes' theorem
posterior_prob <- (true_positive * prior_disease) / 
  ((true_positive * prior_disease) + (false_positive * prior_no_disease))

# Convert to percentage
posterior_percent <- posterior_prob * 100

# Print results
cat("Posterior probability that a person has the disease given a positive test:", posterior_prob, "\n")
cat("In percentage:", posterior_percent, "%\n")

# Question 4 
#LAW OF LARGE NUMBERS (LLN) 
 set.seed(123) 
 n <- 10000
 p <- 0.7   # biased coin
 # Generate coin tosses (1 = head, 0 = tail)
   coin_tosses <- rbinom(n, size = 1, prob = p)
# Running sample mean
running_mean <- cumsum(coin_tosses) / seq_len(n)
# Plot running mean
 plot(running_mean,
             type = "l",
             col = "blue",
             lwd = 2,
             xlab = "Number of Tosses",
             ylab = "Running Sample Mean",
             main = "Law of Large Numbers (Biased Coin)")
# True probability line
abline(h = p, col = "red", lwd = 2, lty = 2) 
legend("right",
                legend = c("Running Mean", "True Probability"),
                col = c("blue", "red"),
                lty = c(1, 2),
                lwd = 2)

# CENTRAL LIMIT THEOREM (CLT) 
set.seed(456)
 
   lambda <- 4
 sample_size <- 50
 num_samples <- 1000
 
   # Generate 1000 sample means using replicate()
   sample_means <- replicate(
         num_samples,
         mean(rpois(sample_size, lambda))
     )

   # Plot histogram of sample means
   hist(sample_means,
               probability = TRUE,
               col = "lightgray",
               border = "white",
               main = "Central Limit Theorem (Poisson Distribution)",
               xlab = "Sample Means")
 
   # Overlay normal distribution curve
   x_vals <- seq(min(sample_means), max(sample_means), length.out = 200)
 normal_curve <- dnorm(
       x_vals,
       mean = mean(sample_means),
       sd = sd(sample_means)
   )
 
   lines(x_vals, normal_curve, col = "red", lwd = 2)

   
   
   
   
# Question 5
   # Linear Regression using iris data
    # Predict Petal.Length from Sepal.Length
     
     # Load built-in dataset
      data(iris)
   
   # Fit linear regression model
    model <- lm(Petal.Length ~ Sepal.Length, data = iris)
   
   # Display model summary
    summary(model)
   
   # Scatter plot of data
    plot(iris$Sepal.Length, iris$Petal.Length,
                main = "Regression of Petal Length on Sepal Length",
                xlab = "Sepal Length",
                ylab = "Petal Length",
                pch = 19,
                col = "blue")
   
     # Add regression line
      abline(model, col = "red", lwd = 2)
   
# question 6
      # Matrix Operations in R
      
      # Create two invertible numeric matrices
      A <- matrix(c(2, 1,
                    1, 3),
                  nrow = 2, byrow = TRUE)
      
      B <- matrix(c(4, 2,
                    3, 1),
                  nrow = 2, byrow = TRUE)
      
      # Display matrices
      cat("Matrix A:\n")
      print(A)
      
      cat("\nMatrix B:\n")
      print(B)
      
      # -------------------------------
      # Matrix Addition
      # -------------------------------
      add_AB <- A + B
      cat("\nMatrix Addition (A + B):\n")
      print(add_AB)
      
      # -------------------------------
      # Matrix Multiplication
      # -------------------------------
      mul_AB <- A %*% B
      mul_BA <- B %*% A
      
      cat("\nMatrix Multiplication (A %*% B):\n")
      print(mul_AB)
      
      cat("\nMatrix Multiplication (B %*% A):\n")
      print(mul_BA)
      
      # -------------------------------
      # Transpose
      # -------------------------------
      t_A <- t(A)
      t_B <- t(B)
      
      cat("\nTranspose of Matrix A:\n")
      print(t_A)
      
      cat("\nTranspose of Matrix B:\n")
      print(t_B)
      
      # -------------------------------
      # Determinant
      # -------------------------------
      det_A <- det(A)
      det_B <- det(B)
      
      cat("\nDeterminant of Matrix A:\n")
      print(det_A)
      
      cat("\nDeterminant of Matrix B:\n")
      print(det_B)
      
    
      # Inverse
      # -------------------------------
      inv_A <- solve(A)
      inv_B <- solve(B)
      
      cat("\nInverse of Matrix A:\n")
      print(inv_A)
      
      cat("\nInverse of Matrix B:\n")
      print(inv_B)
      
      

      
# Question 7
      # Install car package if not already installed
       if (!require(car)) {
             install.packages("car")
             library(car)
         }
      set.seed(123)
       n <- 100 
      # Simulate highly correlated predictors
       X1 <- rnorm(n, mean = 50, sd = 10)
       X2 <- X1 + rnorm(n, mean = 0, sd = 1)
      # Response variable
       Y <- 5 + 2 * X1 + 3 * X2 + rnorm(n, mean = 0, sd = 5) 
       data <- data.frame(Y, X1, X2)
      # Correlation
       cor(data$X1, data$X2)
      
      # Multiple regression
       model <- lm(Y ~ X1 + X2, data = data)
       summary(model)
      
      
      # VIF calculation
       vif(model)
       
       
       
       
       
       
# Question 8
       # 1. Normal Distribution
     
        # Parameters
          mu <- 0        # mean
        sigma <- 1     # standard deviation
        n_norm <- 1000 # sample size
        
          # Generate random samples
          norm_samples <- rnorm(n_norm, mean = mu, sd = sigma)
        
          # Plot histogram with density
          hist(norm_samples, probability = TRUE, col = "lightblue",
                      main = "Normal Distribution (Histogram)",
                      xlab = "Value")
        # Overlay theoretical PDF
          x_vals <- seq(min(norm_samples), max(norm_samples), length.out = 200)
        lines(x_vals, dnorm(x_vals, mean = mu, sd = sigma), col = "red", lwd = 2)
        
          # Compute probabilities
          prob1 <- pnorm(1.0, mean = mu, sd = sigma)    # P(X <= 1)
        prob2 <- pnorm(-1.0, mean = mu, sd = sigma)   # P(X <= -1)
        cat("Normal Distribution Probabilities:\n")
       
          cat("P(X <= 1) =", round(prob1, 4), "\n")
        
        cat("P(X <= -1) =", round(prob2, 4), "\n\n")
      
       
        #2 Binomial Distribution
        
        # Parameters
         size <- 10   # number of trials
         prob <- 0.5  # success probability
         n_binom <- 1000
         
          
           # Generate random samples
           binom_samples <- rbinom(n_binom, size = size, prob = prob)
         
          
           # Histogram
           hist(binom_samples, breaks = 0:(size+1)-0.5, col = "lightgreen",
                       main = "Binomial Distribution (Histogram)",
                       xlab = "Number of Successes")
         
          
           # PMF values for k = 3, 7
           pmf3 <- dbinom(3, size = size, prob = prob)
         pmf7 <- dbinom(7, size = size, prob = prob)
         cat("Binomial Distribution PMFs:\n")
    
           cat("P(X = 3) =", round(pmf3, 4), "\n")
       
         cat("P(X = 7) =", round(pmf7, 4), "\n\n")
        
        
         #3 Poisson Distribution
         
          # Parameters
            lambda <- 4
          n_poisson <- 1000
          
           
            # Generate random samples
            pois_samples <- rpois(n_poisson, lambda = lambda)
          
           
           # Histogram
            hist(pois_samples, breaks = -0.5:max(pois_samples)+0.5, col = "lightpink",
                        main = "Poisson Distribution (Histogram)",
                        xlab = "Number of Events")
          
           
            # PMF values for k = 2, 6
            pmf2 <- dpois(2, lambda)
          pmf6 <- dpois(6, lambda)
          cat("Poisson Distribution PMFs:\n")
         
           
            cat("P(X = 2) =", round(pmf2, 4), "\n")
         
          cat("P(X = 6) =", round(pmf6, 4), "\n")
         