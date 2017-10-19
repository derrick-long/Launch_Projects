

def disclaimer
  puts "***DISCLIMER***"
  puts "This code may not work the way you expect!"
  puts "By using this tempermental program, you agree not to"
  puts "sue the pants off of its creator."
  puts "***"
  puts ""
end


acceptance = 'n'
while acceptance.downcase != 'y'
  disclaimer
  puts "You must accept our disclaimer to use this program! Do you accept? (y/n)"
  acceptance = gets.chomp
end

disclaimer
puts "3 + 2 = #{rand(6)}"

disclaimer
