students <- data.frame(
  Name = c("Gaurav", "Piyush", "Khushi", "Ankita", "Neema"),
  Age = c(20, 22, 21, 23, 19),
  Marks = c(85, 42, 78, 60, 55)
)

avg_marks <- mean(students$Marks)
max_age <- max(students$Age)

paste("Average Marks:", avg_marks)
paste("Maximum Age:", max_age)

students$Grade <- ifelse(students$Marks >= 75, "A",
                         ifelse(students$Marks >= 50, "B", "C"))

print(students)

