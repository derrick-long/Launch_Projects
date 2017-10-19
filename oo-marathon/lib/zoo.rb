require_relative 'cage.rb'
require_relative 'custom_error.rb'
class Zoo
  attr_reader  :employees, :cages, :season_opening_date, :season_closing_date, :name
  def initialize(name, season_opening_date, season_closing_date)

    @name =  name
    @season_opening_date = season_opening_date
    @season_closing_date =  season_closing_date
    @employees = []
    @cages = [].tap do |cages|
      10.times do
      cages << Cage.new
      end
    end
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    date >= @season_opening_date && date <= @season_closing_date
  end

  def add_animal(new_animal) #didn't need array of arrays here, much simpler method for video
    empty_cage = @cages.find{|cage| cage.empty?}
    if !empty_cage.nil?
      empty_cage.animal = new_animal
    else
      raise ZooAtCapacity
    end
  end

  def visit
    results = ""
    @employees.each do |employee|
      results << employee.greet + "\n"
    end

    @cages.each do |cage|
      results << cage.animal.speak + "\n" if !cage.empty?
    end
    results
  end

end
