require 'pry'

lunch = {
  "Hamburger" => 4.00,
  "Hot Dog" => 3.00,
  "Fries" => 2.00,
  "Chips" => 1.00,
  "Water" => 1.25,
  "Soda" => 1.50
}

#needs to take the order then give us the total cost
# handle invalid input

food_not_found = nil
food = []
while food_not_found.nil? || !food_not_found.empty?
puts "Hi there what would you like to order?"
order = gets.chomp
food = order.split(",")

food_not_found = food - lunch.keys
if !food_not_found.empty?
  food_not_found.each do |food|
    puts "Sorry we don't have #{food} on the menu."
    end
  end
end
binding.pry

total = 0
food.each do |food|
total += lunch[food]
end


puts "Thank you your total is $#{total}."
