puts "Are you ready to see what whacky adventure we'll go on today? "
input = gets.chomp.downcase
if input == "yes"
  puts "Woo! Let's Ruby Roll it!"
else
  puts "Boo! You're no fun!"
  exit
end

adventure = rand(1..3)

if adventure == 1
  puts " Looks like we rolled a #{adventure}! "
  puts "Woo boy! Looks like we're sailing today!"
elsif  adventure == 2
  puts "Looks like we rolled a #{adventure}! "
  puts "Oh man! We're going to the animal reservation!"
else
  puts "Looks like we rolled a #{adventure}! "
  puts "OH SNAP. WE ARE GOIN JET SKIING!"
end
