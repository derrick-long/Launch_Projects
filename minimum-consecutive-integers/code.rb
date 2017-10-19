require 'pry'

def minimum_consecutive_integers(array)
  sorted = array.sort
  all_nums = (sorted.first..sorted.last).to_a
  needed_nums = []
  all_nums.each do |number|
    if sorted.include?(number) == false
      needed_nums << number
    end
  end
    needed_nums
end
