# Function to generate Fibonacci numbers
fibonacci <- function(n) {
  if (n <= 0) {
    return(NULL)
  } else if (n == 1) {
    return(0)
  } else if (n == 2) {
    return(1)
  } else {
    fib_sequence <- numeric(n)
    fib_sequence[1] <- 0
    fib_sequence[2] <- 1
    for (i in 3:n) {
      fib_sequence[i] <- fib_sequence[i - 1] + fib_sequence[i - 2]
    }
    return(fib_sequence)
  }
}

# Get the first 10 Fibonacci numbers
n <- 10
fib_numbers <- fibonacci(n)

# Display the first 10 Fibonacci numbers
cat("First", n, "Fibonacci numbers:", fib_numbers, "\n")
