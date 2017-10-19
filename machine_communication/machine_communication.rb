require 'pry'

puts "What would you like to order?"


answer = gets.chomp

3.times do
  puts  "What did you say?"
  answer = gets.chomp
end

puts "oh Okay!"

binding.pry
