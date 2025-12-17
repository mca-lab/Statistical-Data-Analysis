# Matrix Operations

A <- matrix(c(1, 2, 3, 4), nrow = 2)
B <- matrix(c(5, 6, 7, 8), nrow = 2)

A
B

# 1. Matrix Addition
A + B

# 2. Matrix multiplication
A %*% B

# 3. transpose of a matrix
t(A)

# 4. Determinant of a matrix
det(A)

# 5. Inverse of a matrix
solve(A)