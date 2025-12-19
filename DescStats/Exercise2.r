

# Load the built-in iris dataset
data(iris)



# 1. Find number of rows and columns
rows <- nrow(iris)
cols <- ncol(iris)

cat("Number of Rows:", rows, "\n")
cat("Number of Columns:", cols, "\n\n")

# 2. Get first 6 rows
cat("First 6 rows of the dataset:\n")
print(head(iris))

# 3. Statistics of Sepal.Length
mean_sepal_length <- mean(iris$Sepal.Length)
median_sepal_length <- median(iris$Sepal.Length)
variance_sepal_length <- var(iris$Sepal.Length)
sd_sepal_length <- sd(iris$Sepal.Length)

cat("\nStatistics of Sepal.Length:\n")
cat("Mean:", mean_sepal_length, "\n")
cat("Median:", median_sepal_length, "\n")
cat("Variance:", variance_sepal_length, "\n")
cat("Standard Deviation:", sd_sepal_length, "\n")

# 4. Count flowers in each species
cat("\nNumber of flowers in each species:\n")
species_count <- table(iris$Species)
print(species_count)

# 5. Histogram of Petal.Length
hist(
  iris$Petal.Length,
  main = "Histogram of Petal Length",
  xlab = "Petal Length"
)
dev.new()

# 6. Boxplot of Sepal.Width
boxplot(
  iris$Sepal.Width,
  main = "Boxplot of Sepal Width",
  ylab = "Sepal Width"
)
