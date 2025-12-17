print("First 6 rows of the dataset:")
print(head(iris, 6))

print("Summary Statistics for Sepal.Length:")
sepal_mean   <- mean(iris$Sepal.Length)
sepal_median <- median(iris$Sepal.Length)
sepal_var    <- var(iris$Sepal.Length)
sepal_sd     <- sd(iris$Sepal.Length)

paste("Mean:", round(sepal_mean, 4))
paste("Median:", sepal_median)
paste("Variance:", round(sepal_var, 4))
paste("Standard Deviation:", round(sepal_sd, 4))

print("Counts per Species:")
print(table(iris$Species))

par(mfrow = c(1, 2))

hist(iris$Petal.Length, 
     main = "Histogram of Petal Length", 
     xlab = "Petal Length", 
     col  = "lightblue", 
     border = "white")

boxplot(iris$Sepal.Width, 
        main = "Boxplot of Sepal Width", 
        ylab = "Sepal Width", 
        col  = "lightgreen")

par(mfrow = c(1, 1))