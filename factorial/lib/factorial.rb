require 'pry'

def factorial(number)
  a = (1..number).to_a
  total = 1

    a.each_with_index do |first_number, index|
      next_number = a[index + 1]
      unless next_number.nil?
        total = (total * next_number)
      end
    end
    total
end
