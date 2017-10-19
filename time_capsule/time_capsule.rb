#greet user and take their name. Store it
#Ask user what they want to add to the time capsule. Give user the option to use command finished
#if entered an item store it in the time capsule
#once finished print out contents of time capsule
time_capsule = []
puts "Hi there and welcome to the Time Capsule maker. May I have your name please?"
print ">"
name = gets.chomp

while true
  puts "What would you like to add to your Time Capsule?"
  time_capsule_item = gets.chomp
if time_capsule_item == "finished"
  break
else  #works but a bit hobo! look up better method later
  puts "How many #{time_capsule_item} do you want to add?"
  item_count = gets.chomp
  time_capsule << time_capsule_item + " " + item_count
  puts "You added #{item_count} #{time_capsule_item} to the time capsule!"
  puts "Type FINISHED to stop adding items."
  end
end


if time_capsule == []
  puts "You forgot to put something in your time capsule!"
else
  puts "#{name} thanks for trying our time capsule maker. Here is a list of items in your Time Capsule! :"
  time_capsule.each do |item|
  puts "* #{item}"
  end
end
