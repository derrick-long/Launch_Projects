require 'pry'
value = 0
continue = true

while continue do
  puts "Please input a value to sum"
  new_value = gets.chomp.to_i
  value = value + new_value

  puts "Would you like to input another value?"
  input = gets.chomp
    binding.pry
  if input == "f"
    continue = false
    puts "The of your values is: #{value}"
  end
end
