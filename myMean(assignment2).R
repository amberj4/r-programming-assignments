# Assignment 2 - myMean Function
# Amber Johnson
# Course: LIS4370 - R Programming

# Data vector
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

# Original buggy function (for reference)
myMean_buggy <- function(assignment2) {
  return(sum(assignment) / length(someData))
}


# Corrected function
myMean <- function(data) {
  return(sum(data) / length(data))
}

# Test corrected function
myMean(assignment2)