# Calculating the covariance matrix of 3 random variables
x1 = [4.0000 4.2000 3.9000 4.3000 4.1000]'
x2 = [2.0000 2.1000 2.0000 2.1000 2.2000]'
x3 = [0.60000 0.59000 0.58000 0.62000 0.63000]'
cov([x1,x2,x3])

# Calculating eigenvectors and eigenvalues
A = [3 1; 1 3]
[eig_vec,eig_val] = eig(A)

# Generating a Gaussian dataset
pkg load statistics
mean = [0 0]
cov = [2 0; 0 2]
mvnrnd(mean,cov,5)