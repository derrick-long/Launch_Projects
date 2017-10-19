#create method average
#calculate students average score and returns it
#method takes 1 arg
#use float
jane = [98,95,88,97,74]
samantha = [85,93,98,88,49]
matt = [87,93,89,97,65]

def average(student_grades)
sum = 0
student_grades.each do |grade|
  sum += grade
end

sum / student_grades.size.to_f
end


puts average(jane)


def letter_grade(average)
  if average > 90
    "A"
  elsif average >= 80
    "B"
  elsif average >= 70
    "C"
  elsif average >= 60
    "D"
  else
    "F"
  end
end

puts letter_grade(41)

students = ["Johnny","Jane", "Sally", "Elizabeth", "Michael"]

def rankings(students)
  students.each_with_index do |student, index|
  puts "#{index + 1}. #{student} "
  end
end

rankings(students)
