# Matrix Operations

# Create matrices
A <- matrix(c(1, 2, 3, 4), nrow = 2)
B <- matrix(c(5, 6, 7, 8), nrow = 2)

cat("Matrix A:\n")
print(A)

cat("\nMatrix B:\n")
print(B)

# Matrix addition
cat("\nMatrix Addition (A + B):\n")
add_result <- A + B
print(add_result)

# Matrix multiplication
cat("\nMatrix Multiplication (A %*% B):\n")
mul_result <- A %*% B
print(mul_result)

# Transpose
cat("\nTranspose of Matrix A:\n")
transpose_A <- t(A)
print(transpose_A)

# Determinant
cat("\nDeterminant of Matrix A:\n")
det_A <- det(A)
print(det_A)

# Inverse
cat("\nInverse of Matrix A:\n")
inv_A <- solve(A)
print(inv_A)
