# Assignment 8: R Coding Task

# Step 1: Import dataset
x <- read.table(file.choose(), header = TRUE, sep = ",", stringsAsFactors = FALSE)
head(x)

# Step 2: Compute mean Grade by Sex using plyr
install.packages("plyr")  # Run only if not installed
library(plyr)

gender_mean <- ddply(
  x,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

print(gender_mean)

# Export grouped means to a text file
write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = "\t",
  row.names = FALSE,
  quote = FALSE
)

# Step 3: Filter names containing "i" (case-insensitive)
i_students <- subset(x, grepl("[iI]", Name))

head(i_students)

# Export only the names to CSV
write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)

# Export the full filtered dataset to CSV
write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE,
  quote     = FALSE
)

# Step 4: Confirm files exist
list.files(pattern = "gender_mean.txt|i_students.csv|i_students_full.csv")
