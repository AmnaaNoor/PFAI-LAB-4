# 1. Calculate basic descriptive statistics for a numeric vector
numeric_vector <- c(5, 8, 10, 10, 15, 20, 25, 30, 10)

mean_value <- mean(numeric_vector)    # Mean
median_value <- median(numeric_vector) # Median

# Function to calculate mode (most frequent value)
mode_value <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}

mode_result <- mode_value(numeric_vector)

cat("Mean:", mean_value, "\nMedian:", median_value, "\nMode:", mode_result, "\n")

# 2. Generate a sequence from 1 to 100 and find the sum of all even numbers
sequence_numbers <- 1:100
sum_even_numbers <- sum(sequence_numbers[sequence_numbers %% 2 == 0])

cat("Sum of even numbers from 1 to 100:", sum_even_numbers, "\n")

# 3. Use paste() to concatenate multiple strings with a separator
string1 <- "Hello"
string2 <- "World"
string3 <- "R Language"
concatenated_string <- paste(string1, string2, string3, sep = " - ")

cat("Concatenated String:", concatenated_string, "\n")

# 4. Create a matrix and perform operations
matrix_A <- matrix(c(4, 2, 2, 3), nrow = 2, byrow = TRUE) # 2x2 matrix

transpose_A <- t(matrix_A)  # Transposition
determinant_A <- det(matrix_A)  # Determinant
inverse_A <- solve(matrix_A)  # Inversion (if determinant ≠ 0)

cat("Matrix A:\n")
print(matrix_A)
cat("Transpose of A:\n")
print(transpose_A)
cat("Determinant of A:", determinant_A, "\n")

if (determinant_A != 0) {
  cat("Inverse of A:\n")
  print(inverse_A)
} else {
  cat("Matrix A is singular and cannot be inverted.\n")
}
