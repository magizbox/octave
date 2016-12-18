# Converting a matrix into a row vector (by column)
A = [1 2 3; 4 5 6; 7 8 9]
A(:)

# Converting row to column vectors
b = [1 2 3]
b'

# Reshaping Matrices
A = [1 2 3 4; 5 6 7 8; 9 10 11 12]
reshape(A,4,3) 

# Concatenating matrices
A = [1 2 3; 4 5 6]
B = [7 8 9; 10 11 12]
C = [A; B]

# Stacking vectors and matrices
a = [1 2 3]
b = [4 5 6]
c = [a' b']
