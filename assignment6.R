# Assignment 6 - Matrix Arithmetic and Construction
# Name: Amber Johnson

### Task 1: Matrix Addition & Subtraction

# Define matrices A and B
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

# Compute A + B
A_plus_B <- A + B
print("A + B =")
print(A_plus_B)

# Compute A - B
A_minus_B <- A - B
print("A - B =")
print(A_minus_B)


### Task 2: Create a Diagonal Matrix

# Build a 4x4 diagonal matrix with entries 4, 1, 2, 3
D <- diag(c(4, 1, 2, 3))
print("Diagonal Matrix D =")
print(D)


### Task 3: Construct a Custom 5x5 Matrix

# Create a 5x5 block-structured matrix
# The diagonal should contain 3s
# The first row should contain 3 in [1,1] and 1s elsewhere
# The first column should contain 3 in [1,1] and 2s in [2:5,1]
# The rest of the elements are 0 except where shown

# Step 1: create a 5x5 diagonal matrix with 3s
custom_matrix <- diag(3, 5)

# Step 2: replace first column (rows 2-5) with 2s
custom_matrix[2:5, 1] <- 2

# Step 3: replace first row (columns 2-5) with 1s
custom_matrix[1, 2:5] <- 1

print("Custom 5x5 Matrix =")
print(custom_matrix)
