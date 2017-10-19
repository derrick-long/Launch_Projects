class Cohort
  attr_reader :title, :start_date, :end_date, :students, :system_checks
  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
  end

  def career_kickoff
    end_date + 4
  end

  def enroll(new_student) #ugly but works
  if @students[0].nil?
    @students << new_student
  else
    @students.each do |student|
      if student.name != new_student.name
        @students << new_student
      end
    end
  end
  end

  def assign(new_system_check)
    @system_checks << new_system_check
  end

  def roster
    roster =  "#{@title}" + "\n"
    @students.each do |student|
       roster << "#{student.name} #{student.email}" + "\n"
    end
    roster
  end



end
