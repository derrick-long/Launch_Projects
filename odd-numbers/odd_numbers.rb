numbers = (1..100).to_a
odd_numbers = numbers.select{|num| num % 2 == 1}
odd_numbers.each do |num|
  puts num
end
