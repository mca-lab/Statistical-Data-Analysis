students <- data.frame(
  Name  = c("Amit", "Neha", "Rahul", "Priya", "Karan"),
  Age   = c(20, 21, 19, 22, 20),
  Marks = c(82, 68, 45, 74, 55)
)

average_marks <- mean(students$Marks)
cat("Average Marks:", average_marks, "\n")

max_age <- max(students$Age)
cat("Maximum Age:", max_age, "\n")

students$Grade <- ifelse(
  students$Marks >= 75, "A",
  ifelse(students$Marks >= 50, "B", "C")
)

print(students)
