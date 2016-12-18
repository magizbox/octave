## Creating Matrix

```octave
A = [ 1, 1, 2; 3, 5, 8; 13, 21, 32 ]
A =
    1    1    2
    3    5    8
   13   21   32
   
# Creating an 1D column vector
a = [1; 2; 3]
a =
   1
   2
   3
   
# Creating an 1D row vector
b = [1 2 3]	
b =
   1   2   3

# Creating a random m x n matrix
rand(3, 2)
ans =
   0.13567   0.51230
   0.67646   0.19012
   0.76147   0.89694
   
# Creating a zero m x n matrix 
zeros(3, 2)
ans =
   0   0
   0   0
   0   0

# Creating an m x n matrix of ones
ones(3,2)
ans =
   1   1
   1   1
   1   1

# Creating an identity matrix
eye(3)
Diagonal Matrix
   1   0   0
   0   1   0
   0   0   1

# Creating a diagonal matrix
a = [1 2 3]
diag(a)
Diagonal Matrix
   1   0   0
   0   2   0
   0   0   3
```

## Accessing Matrix Elements

```octave
# Getting the dimension of a matrix
A = [1 2 3; 4 5 6]
size(A)
ans =
   2   3
   
# Selecting rows
A = [1 2 3; 4 5 6; 7 8 9]
A(1, :)
ans =
   1   2   3
A(1:2, :)
ans =
   1   2   3
   4   5   6

# Selecting columns
A = [1 2 3; 4 5 6; 7 8 9]
A(:, 1)
ans =
   1
   4
   7
A(:, 1:2)
ans =
   1   2
   4   5
   7   8
   
# Extracting rows and columns by criteria
A = [1 2 3; 4 5 9; 7 8 9]
A(A(:,3) == 9, :)
ans =
   4   5   9
   7   8   9
   
# Accessing elements
A = [1 2 3; 4 5 6; 7 8 9]
A(1, 1)
ans =  1
A(2, 3)
ans =  6
```

## Manipulating Shape and Dimensions

```octave
# Converting a matrix into a row vector (by column)
A = [1 2 3; 4 5 6; 7 8 9]
A =
   1   2   3
   4   5   6
   7   8   9
A(:)
ans =
   1
   4
   7
   2
   5
   8
   3
   6
   9
   
# Converting row to column vectors
b = [1 2 3]
b =
   1   2   3
b'
ans =
   1
   2
   3

# Reshaping Matrices
A = [1 2 3 4; 5 6 7 8; 9 10 11 12]
A =
    1    2    3    4
    5    6    7    8
    9   10   11   12
reshape(A,4,3) 
ans =
    1    6   11
    5   10    4
    9    3    8
    2    7   12

# Concatenating matrices
A = [1 2 3; 4 5 6]
A =
   1   2   3
   4   5   6
B = [7 8 9; 10 11 12]
B =
    7    8    9
   10   11   12
C = [A; B]
C =
    1    2    3
    4    5    6
    7    8    9
   10   11   12
   
# Stacking vectors and matrices
a = [1 2 3]
a =
   1   2   3
b = [4 5 6]
b =
   4   5   6
c = [a' b']
c =
   1   4
   2   5
   3   6
```

## Basic Operations

```octave
# Matrix-scalar operations
A = [1 2 3; 4 5 6; 7 8 9]
A =
   1   2   3
   4   5   6
   7   8   9
A * 2
ans =
    2    4    6
    8   10   12
   14   16   18
A + 2
ans =
    3    4    5
    6    7    8
    9   10   11
A - 2
ans =
  -1   0   1
   2   3   4
   5   6   7
A / 2
ans =
   0.50000   1.00000   1.50000
   2.00000   2.50000   3.00000
   3.50000   4.00000   4.50000

# Matrix-matrix multiplication
A = [1 2 3; 4 5 6; 7 8 9]
A =
   1   2   3
   4   5   6
   7   8   9
A * A
ans =
    30    36    42
    66    81    96
   102   126   150

# Matrix-vector multiplication
A = [1 2 3; 4 5 6; 7 8 9]
A =
   1   2   3
   4   5   6
   7   8   9
b = [ 1; 2; 3 ]
b =
   1
   2
   3
A * b
ans =
   14
   32
   50

# Element-wise matrix-matrix operations
A = [1 2 3; 4 5 6; 7 8 9]
A =
   1   2   3
   4   5   6
   7   8   9
A .* A
ans =
    1    4    9
   16   25   36
   49   64   81
A .+ A
ans =
    2    4    6
    8   10   12
   14   16   18
A .- A
ans =
   0   0   0
   0   0   0
   0   0   0
A ./ A
ans =
   1   1   1
   1   1   1
   1   1   1

# Matrix elements to power n
A = [1 2 3; 4 5 6; 7 8 9]
A =
   1   2   3
   4   5   6
   7   8   9
A.^2
ans =
    1    4    9
   16   25   36
   49   64   81

# Matrix to power n
A = [1 2 3; 4 5 6; 7 8 9]
A =
   1   2   3
   4   5   6
   7   8   9
A ^ 2
ans =
    30    36    42
    66    81    96
   102   126   150

   
# Matrix transpose
A = [1 2 3; 4 5 6; 7 8 9]
A =
   1   2   3
   4   5   6
   7   8   9
A'
ans =
   1   4   7
   2   5   8
   3   6   9

# Determinant of a matrix
A = [6 1 1; 4 -2 5; 2 8 7]
A =
   6   1   1
   4  -2   5
   2   8   7
det(A)
ans = -306

# Inverse of a matrix
A = [4 7; 2 6]
A =
   4   7
   2   6
inv(A)
ans =
   0.60000  -0.70000
  -0.20000   0.40000
```

## Advanced Operations

```octave
# Calculating the covariance matrix of 3 random variables
x1 = [4.0000 4.2000 3.9000 4.3000 4.1000]'
x1 =
   4.0000
   4.2000
   3.9000
   4.3000
   4.1000
x2 = [2.0000 2.1000 2.0000 2.1000 2.2000]'
x2 =
   2.0000
   2.1000
   2.0000
   2.1000
   2.2000
x3 = [0.60000 0.59000 0.58000 0.62000 0.63000]'
x3 =
   0.60000
   0.59000
   0.58000
   0.62000
   0.63000
cov( [x1,x2,x3] )
ans =
  2.5000e-002  7.5000e-003  1.7500e-003
  7.5000e-003  7.0000e-003  1.3500e-003
  1.7500e-003  1.3500e-003  4.3000e-004

# Calculating eigenvectors and eigenvalues
A = [3 1; 1 3]
A =
   3   1
   1   3
[eig_vec,eig_val] = eig(A)
eig_vec =
  -0.70711   0.70711
   0.70711   0.70711
eig_val =
Diagonal Matrix
   2   0
   0   4
   
# Generating a Gaussian dataset
pkg load statistics
mean = [0 0]
mean =
   0   0
cov = [2 0; 0 2]
cov =
   2   0
   0   2
mvnrnd(mean,cov,5)
ans =
  -0.7442485  -0.0099190
  -1.7695915   0.0418147
  -0.8780206   0.6145333
   0.5145315  -0.9834832
  -1.4736628   0.4570979
```
