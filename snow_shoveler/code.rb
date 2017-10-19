puts "How many feet wide is the driveway? "
width = gets.chomp.to_f

puts "How many feet long is the driveway? "
length = gets.chomp.to_f

puts "And how many inches of snow fell?"
snow = gets.chomp.to_f

cubic_snow = (snow*length*width)/12.00

puts "So, that's about #{cubic_snow} cubic feet of snow."

if cubic_snow.round <= 49
  cost = 20
elsif cubic_snow.round <= 149
  cost = 50
elsif cubic_snow.round <=299
  cost = 100
else
  cost = 150
end

puts "That'll be #{cost} smackers, please!"
