# Getting the dimension of a matrix
A = [1 2 3; 4 5 6]
size(A)

# Selecting rows
A = [1 2 3; 4 5 6; 7 8 9]
A(1, :)
A(1:2, :)

# Selecting columns
A = [1 2 3; 4 5 6; 7 8 9]
A(:, 1)
A(:, 1:2)

# Extracting rows and columns by criteria
A = [1 2 3; 4 5 9; 7 8 9]
A(A(:,3) == 9, :)

# Accessing elements
A = [1 2 3; 4 5 6; 7 8 9]
A(1, 1)
A(2, 3)