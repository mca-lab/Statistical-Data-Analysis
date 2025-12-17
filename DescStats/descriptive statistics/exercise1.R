# 1. Create a data frame with 5 students: columns = Name, Age, Marks.

students <- data.frame(
  Name = c("Aman", "Riya", "Sohan", "Neha", "Karan"),
  Age = c(20, 21, 19, 22, 20),
  Marks = c(78, 65, 45, 88, 55)
)

students


# 2. Find the average marks and maximum age.
avg_marks <- mean(students$Marks)

max_age <- max(students$Age)

avg_marks
max_age



# 3. Add a new column 'Grade' based on the following criteria:#    - Marks >= 75: Grade 'A'
#    - Marks >= 50 and < 75: Grade 'B'
#    - Marks < 50: Grade 'C'
students$Grade <- ifelse(
  students$Marks >= 75, "A",
  ifelse(students$Marks >= 50, "B", "C")
)

students
