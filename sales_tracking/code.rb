sales_start = 0.00
while sales_start < 100.00 do
  puts "Let's track our sales till we get to a 100!"
  sales_new = gets.chomp.to_f
  sales_start = sales_start + sales_new
  puts "That makes our grand total #{sales_start} !"
end

puts "You've reached 100 or more!"
