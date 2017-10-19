items_we_have = "chips popcorn skittles clif-bar mentos gum cheetos m&ms"
#get user input for a word in this string
puts "What would you like from the vending machine?"
choice = gets.chomp
item_list = items_we_have.index(choice)
if item_list.nil?
  puts "We're all out of that!"
else
  puts "Item index is: #{item_list}"
end

# check for .index value of the given string
# print the value to the user
#if the value is nil print a line saying we don't have tha
