if (!require(car)) {
    install.packages("car", repos = "https://cloud.r-project.org")
    library(car)
}

set.seed(123)

n <- 100
x1 <- runif(n, 0, 10)

# x2 is x1 plus a tiny bit of random noise
x2 <- x1 + rnorm(n, mean = 0, sd = 0.1) 

# Generate response variable y
# True relationship: y = 2 + 3*x1 + 0*x2 + noise

y <- 2 + 3*x1 + rnorm(n)

correlation_matrix <- cor(cbind(x1, x2))

model <- lm(y ~ x1 + x2)
summary(model)

print("Variance Inflation Factors (VIF)")
vif_values <- vif(model)
print(vif_values)

print("Impact of MultiColinearity on regression Coefficients")
print("1. COEFFICIENT INSTABILITY: The true coefficient for x1 is 3.0")
paste("Due to multicollinearity, the estimate is", round(coef(model)[2], 2))
paste("and x2 (which should be 0) is", round(coef(model)[3], 2))

print("2. SIGNIFICANCE LOSS: Even though x1 and x2 are nearly identical")
paste("x2 has a p-value of", round(summary(model)$coefficients[3,4], 3))
paste("The high VIF (", round(vif_values[1], 1), ") has inflated the Standard Error")
print("making the model 'uncertain' about which variable is actually driving Y")