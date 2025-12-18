# Loaded built-in dataset
data(iris)

num_rows <- nrow(iris)
num_cols <- ncol(iris)
cat("Number of rows:", num_rows, "\n")
cat("Number of columns:", num_cols, "\n\n")

cat("First 6 rows of the dataset:\n")
print(head(iris))
cat("\n")

mean_sepal <- mean(iris$Sepal.Length)
median_sepal <- median(iris$Sepal.Length)
var_sepal <- var(iris$Sepal.Length)
sd_sepal <- sd(iris$Sepal.Length)

cat("Sepal.Length Statistics:\n")
cat("Mean:", mean_sepal, "\n")
cat("Median:", median_sepal, "\n")
cat("Variance:", var_sepal, "\n")
cat("Standard Deviation:", sd_sepal, "\n\n")

species_count <- table(iris$Species)
cat("Number of flowers in each species:\n")
print(species_count)
cat("\n")

hist(
  iris$Petal.Length,
  main = "Histogram of Petal Length",
  xlab = "Petal Length",
  col = "lightblue",
  border = "black"
)

boxplot(
  iris$Sepal.Width,
  main = "Boxplot of Sepal Width",
  ylab = "Sepal Width",
  col = "lightgreen"
)
