# Created two numeric matrices (2x2)
A <- matrix(c(1, 2, 3, 4), nrow = 2)
B <- matrix(c(5, 6, 7, 8), nrow = 2)

cat("Matrix A:\n")
print(A)

cat("\nMatrix B:\n")
print(B)

# 1. Matrix Addition
add_result <- A + B
cat("\nMatrix Addition (A + B):\n")
print(add_result)

# 2. Matrix Multiplication
mult_result <- A %*% B
cat("\nMatrix Multiplication (A %*% B):\n")
print(mult_result)

# 3. Transpose of Matrix A
transpose_A <- t(A)
cat("\nTranspose of Matrix A:\n")
print(transpose_A)

# 4. Determinant of Matrix A
det_A <- det(A)
cat("\nDeterminant of Matrix A:\n")
print(det_A)

# 5. Inverse of Matrix A
inv_A <- solve(A)
cat("\nInverse of Matrix A:\n")
print(inv_A)
