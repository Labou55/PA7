
# Name: Labour Modi
# Course: COP2073C
# Assignment 7: Grass Blade Length Distribution
# Date: October 25, 2026

# Define the normal distribution parameters
mean_value <- 10
variance <- 2
sd_value <- sqrt(variance)

# 1. Calculate the probability between 9.5 and 11 mm
probability <- pnorm(11, mean = mean_value, sd = sd_value) -
  pnorm(9.5, mean = mean_value, sd = sd_value)

cat("Probability blade is between 9.5 and 11 mm:",
    probability, "\n")

# 2. Calculate Z-scores and verify the probability
z_lower <- (9.5 - mean_value) / sd_value
z_upper <- (11 - mean_value) / sd_value

z_probability <- pnorm(z_upper) - pnorm(z_lower)

cat("Probability from Z-scores for 9.5 and 11 mm:",
    z_probability, "\n")

# 3. Find the blade length at the 2.5th percentile
shortest_length <- qnorm(0.025, mean = mean_value,
                         sd = sd_value)

cat("Blade length below shortest 2.5%:",
    shortest_length, "mm\n")

# 4. Standardize the 2.5th percentile blade length
z_shortest <- (shortest_length - mean_value) / sd_value

cat("Z-score of shortest 2.5% blade:",
    z_shortest, "\n")
