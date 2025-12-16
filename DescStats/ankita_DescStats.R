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
