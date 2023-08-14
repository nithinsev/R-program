# Set the seed for reproducibility (optional)
set.seed(123)

# Generate a vector of 10 random integer values between -50 and +50
random_vector <- sample(-50:50, 10, replace = TRUE)

# Display the random vector
cat("Random vector:", random_vector, "\n")
