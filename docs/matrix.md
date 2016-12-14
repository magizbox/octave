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

## Selection

```
> Index Expression
> A(1, [1, 2])  # row 1, columns 1 and 2
> A(1, 1:2)     # row 1, columns in range 1-2
> A(1, : )       # row 1, all columns

> Transpose A
> A'
ans =
    1    3   13
    1    5   21
    2    8   32

> Inverse of the square matrix A
> inv(A)
ans =

   2.00000  -2.50000   0.50000
  -2.00000  -1.50000   0.50000
   0.50000   2.00000  -0.50000
```

**Problem 1**: Transform labels vector to labels matrix

```
> Input
labels =
   1
   1
   3
> Output
labels =
   1   0   0
   1   0   0
   0   0   1
```

Two solutions

```
> Solution 1
num_labels = size(labels, 1)
out = zeros(num_labels, num_labels);
for i=1:num_labels
  out(i, labels (i)) = 1;
end

> Solution 2
num_labels = size(labels, 1)
out = eye(num_labels)(labels, : )
```
