available_items = ["old paperback book", "potato", "red onion", "dried lemon", "frankincense", "medicinal herbs", "saffron", "glass spice jar",
  "red fabric", "orange fabric", "handicrafts", "small Persian rug", "medium Persian rug", "large Persian rug", "extra large Persian rug"]
souq_cart = []
puts "Hello and welcome to the shop! What is your name?"
name = gets.chomp
puts "Here's a list of what we have on offer: "
available_items.each do |item|
  puts "* #{item}"
end
#look up how to get our uppercase shits workin
unavailable_items = []
selection = ""

while true
  puts "What would you like?  Type finished when you're done! \n >"
  selection = gets.chomp
if available_items.include?(selection)
  souq_cart << selection
  puts "Added #{selection} to your cart!"
elsif selection == "finished"
  break
else
  unavailable_items << selection
  puts "Sorry we don't carry that!"
  end
end

puts "#{name}, thanks for trying our online Souq platform. Here is a list of the items in your cart!: "

souq_cart.each do |item|
  puts "* #{item}"
end

puts "#{name} by the way we notice you tried buying some items that aren't in our shop. We don't have the following items yet, but we will let you know if we get them in stock: "

unavailable_items.each do |item|
  puts "* #{item}"
end


#greet shopper and take name store as name
#ask user what they want to add to their cart.
#they must ask for something from the following items
#give the user an option to type a command like finished to end transaction
#if they entered an item store that item in the cart
#once finished print out contents of the cart to the user to see in
#following format
