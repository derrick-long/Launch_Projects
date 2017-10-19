numbers = (1..100).to_a
numbers.each do |num|
  if num % 5 == 0 && num % 3 == 0
    puts "fizzbang"
  elsif num % 5 == 0
    puts "bang"
  elsif num % 3 == 0
    puts "fizz"
  else
    puts num
  end
end
