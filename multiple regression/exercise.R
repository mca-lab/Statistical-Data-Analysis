# Multicollinearity Simulation

set.seed(1)

X1 <- rnorm(100)
X2 <- X1 + rnorm(100, sd = 0.1)   # highly correlated with X1
Y  <- 2 * X1 + 3 * X2 + rnorm(100)

data <- data.frame(Y, X1, X2)


# check correlation between X1 and X2
cor(X1, X2)

# Fit multiple regression model
model <- lm(Y ~ X1 + X2, data = data)
summary(model)

# compute VIF
library(car)
vif(model)

