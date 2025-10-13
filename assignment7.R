# Load built-in dataset
# We are using the mtcars dataset, which contains fuel consumption and performance information for 32 car models.
# This dataset includes variables like miles per gallon (mpg), number of cylinders (cyl), horsepower (hp), weight (wt), and more.
data("mtcars")

# Show first few rows
# The head() function displays the first six rows of the dataset, giving a quick overview of the data values.
head(mtcars)

# Describe structure
# The str() function provides information about the dataset's structure, showing that mtcars is a data frame
# with 32 observations and 11 numeric variables. This helps us understand the type and format of each column.
str(mtcars)

# Apply base generic functions
# Generic functions in R behave differently depending on the class of the object.
# summary() generates descriptive statistics for each column. Since mtcars is a data frame, R calls summary.data.frame().
summary(mtcars)

# plot() creates a scatterplot of miles per gallon (mpg) versus horsepower (hp). R dispatches plot.default() for numeric vectors.
plot(mtcars$mpg, mtcars$hp, main = "MPG vs Horsepower")

# print() displays the first three rows of the dataset. For data frames, R calls print.data.frame().
print(mtcars[1:3, ])

# Define S3 object
# S3 objects are simple lists with a class attribute. Here we create a student object with name, age, and GPA.
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

# Define a print method for S3
# In S3, methods are defined by naming convention: generic.classname(). This custom print method formats the output for our student_s3 object.
print.student_s3 <- function(x) {
  cat("Student S3 Object\n")
  cat("Name:", x$name, "\nAge:", x$age, "\nGPA:", x$GPA, "\n")
}

# Test dispatch
# When we call print() on an S3 object, R checks the class attribute and dispatches the appropriate method.
print(s3_obj)

# Define S4 class
# S4 objects are formal and have predefined slots with specific data types. Here we define a student_s4 class with slots for name, age, and GPA.
setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))

# Create S4 object
# We create an instance of the student_s4 class with the same data as our S3 example.
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

# Define a show (print) method for S4
# In S4, methods are defined using setMethod(). The show() method customizes how the object is displayed when printed.
setMethod("show", "student_s4", function(object) {
  cat("Student S4 Object\n")
  cat("Name:", object@name, "\nAge:", object@age, "\nGPA:", object@GPA, "\n")
})

# Test dispatch
# When we type the object name, R recognizes it as an S4 object and calls the show() method we defined, displaying the formatted output.
s4_obj
