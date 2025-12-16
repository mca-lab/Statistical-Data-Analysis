# 1. Create a data frame with 5 students
students <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Age = c(20, 22, 21, 23, 20),
  Marks = c(85, 67, 45, 78, 52)
)

# Display the data frame
print("Original Data Frame:")
print(students)

# 2. Find average marks
average_marks <- mean(students$Marks)
cat("Average Marks:", average_marks, "\n")

# Find maximum age
maximum_age <- max(students$Age)
cat("Maximum Age:", maximum_age, "\n")

# 3. Add Grade column based on marks
students$Grade <- ifelse(
  students$Marks >= 75, "A",
  ifelse(students$Marks >= 50 & students$Marks < 75, "B", "C")
)

# Display updated data frame
print("Data Frame with Grades:")
print(students)

