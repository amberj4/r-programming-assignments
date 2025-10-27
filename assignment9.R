# R Programing
# Amber Johnson
# October 26,2025
# Module # 9 assignment

# Add libraries below
library(lattice)
library(ggplot2)


# Load dataset
data("mtcars", package = "datasets")
head(mtcars)

# Base R scatter plot
plot(mtcars$wt, mtcars$mpg,
     main = "Base: MPG vs Weight",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles per Gallon",
     pch = 19,       # solid circle
     col = "blue")

# Base R histogram
hist(mtcars$mpg,
     main = "Base: Distribution of MPG",
     xlab = "MPG",
     col = "lightgreen",
     border = "black")


# Conditional scatter plot by number of cylinders
xyplot(mpg ~ wt | factor(cyl),
       data = mtcars,
       main = "Lattice: MPG vs Weight by Cylinders",
       xlab = "Weight (1000 lbs)",
       ylab = "Miles per Gallon",
       layout = c(3,1),
       pch = 19, col = "darkred")

# Boxplot of MPG by cylinders
bwplot(mpg ~ factor(cyl),
       data = mtcars,
       main = "Lattice: MPG by Cylinders",
       xlab = "Cylinders",
       ylab = "Miles per Gallon",
       col = "orange")


# Scatter plot with trend line
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "ggplot2: MPG vs Weight with Trend by Cylinders",
       x = "Weight (1000 lbs)",
       y = "Miles per Gallon",
       color = "Cylinders") +
  theme_minimal()

# Faceted histogram
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  facet_wrap(~ cyl) +
  labs(title = "ggplot2: MPG Distribution by Cylinders",
       x = "Miles per Gallon",
       y = "Count") +
  theme_light()
