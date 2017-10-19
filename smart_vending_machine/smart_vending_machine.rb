#Ask user what the name of the item they would like
#accept answer and save it as a variable
#ask user how many of the thing they would like
#accept user answer as a # and save it as a variable
# use the answer to start a .times loop, in which you print the word the user asked for the number of times they asked for it

puts "Hello and welcome to the vending machine! What would you like?"
vending_machine_choice = gets.chomp
puts "How many of those would you like?"
vending_machine_quantity = gets.chomp.downcase
if vending_machine_quantity.index("tons")
  while vending_machine_quantity != 0
    puts vending_machine_choice
    vending_machine_quantity = rand(14)
  end
else
vending_machine_quantity.to_i.times do
  puts vending_machine_choice
  end
end


puts "There you go champ!"
