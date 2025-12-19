A <- matrix(c(4, 7, 2, 6), nrow = 2, ncol = 2)
B <- matrix(c(1, 3, 5, 2), nrow = 2, ncol = 2)

print("Matrix A")
print(A)
print("Matrix B")
print(B)

sum <- A + B
print("Matrix Addition (A + B)")
print(sum)

mul <- A %*% B
print("Matrix Multiplication (A X B)")
print(mul)

transpose <- t(A)
print("Transpose of A")
print(transpose)

det <- det(A)
print("Determinant of A")
print(det)

inverse <- solve(A)
print("Inverse of A")
print(inverse)

print("Verification: A X Inverse(A)")
print(round(A %*% inverse))