# Exercise-1
students <- data.frame(
  Name = c("Aman", "Riya", "Karan", "Simran", "Neha"),
  Age = c(20, 21, 19, 22, 20),
  Marks = c(80, 65, 45, 90, 72)
)
mean(students$Marks)
max(students$Age)
students$Grade <- ifelse(students$Marks >= 75, "A",
                         ifelse(students$Marks >= 50, "B", "C"))
students


