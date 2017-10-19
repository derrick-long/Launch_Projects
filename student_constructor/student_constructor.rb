#create a class with three arguements
#student first name
#student last name
#list of student grades
require 'pry'




class Student
  attr_reader :first_name, :last_name, :grades
  def initialize(student_info)
    @first_name = student_info[:first_name]
    @last_name = student_info[:last_name]
    @grades = student_info[:grades]
    @average = calc_average
  end


  def calc_average
    sum = 0
    @grades.each do |grade| #remember instance variable here!
    sum += grade
  end
  sum/@grades.length
    end
end

binding.pry
