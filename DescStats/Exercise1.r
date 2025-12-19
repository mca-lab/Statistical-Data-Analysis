# Exercise 1: Student Data Analysis

# Create a data frame
students <- data.frame(
	Name = c("Amit", "Riya", "Sohan", "Neha", "Rahul"),
	Age = c(20, 21, 19, 22, 20),
	Marks = c(78, 65, 45, 82, 55)
)

# Display the data frame
print(students)

# Find average marks
average_marks <- mean(students$Marks)

# Find maximum age
maximum_age <- max(students$Age)

# Add Grade column based on marks
students$Grade <- ifelse(
	students$Marks >= 75, "A",
	ifelse(students$Marks >= 50 & students$Marks < 75, "B", "C")
)

# Display results
cat("\nAverage Marks:", average_marks)
cat("\nMaximum Age:", maximum_age)

cat("\n\nUpdated Student Data:\n")
print(students)

