# Matrix-scalar operations
A = [1 2 3; 4 5 6; 7 8 9]
A * 2
A + 2
A - 2
A / 2

# Matrix-matrix multiplication
A = [1 2 3; 4 5 6; 7 8 9]
A * A

# Matrix-vector multiplication
A = [1 2 3; 4 5 6; 7 8 9]
b = [ 1; 2; 3 ]
A * b

# Element-wise matrix-matrix operations
A = [1 2 3; 4 5 6; 7 8 9]
A .* A
A .+ A
A .- A
A ./ A

# Matrix elements to power n
A = [1 2 3; 4 5 6; 7 8 9]
A.^2

# Matrix to power n
A = [1 2 3; 4 5 6; 7 8 9]
A ^ 2

# Matrix transpose
A = [1 2 3; 4 5 6; 7 8 9]
A'

# Determinant of a matrix
A = [6 1 1; 4 -2 5; 2 8 7]
det(A)

# Inverse of a matrix
A = [4 7; 2 6]
inv(A)