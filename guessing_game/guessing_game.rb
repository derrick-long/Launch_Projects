#ask user what difficulty they would like to play at
#accept user input and save as a variable
#pick a random number, if the user chose easy the number should be between 1- 10, if hard it should be between 1-20
#depending on which level the user chose, say you picked a random number and that the user now has to guess it
#start a while loop. The loop should run for as long as the user hasn't found the correct answer. Each time the loop runs the user should be asked to pick a number
#as long as the answer isn't correct, the user should be asked to try again
#after the user has found the correct answer the loop should exit and display a congrats message

puts "Welcome to the Guessing Game! What difficulty would you like to play?"
puts "Select easy or hard: "
user_score = 0
user_guess = nil
winning_number = nil
difficulty = gets.chomp.downcase
if difficulty == "easy"
winning_number = rand(10) + 1
puts "I've picked a number between 1 and 10. Guess it!"
elsif difficulty == "hard"
  winning_number = rand(20)+ 1
  puts "I've picked a number between 1 and 20. Guess it!"
else
  puts "Please select a difficulty"
end
while user_guess != winning_number
  user_score += 1
  user_guess = gets.chomp.to_i
  puts "Nope try again, please!"
end

puts "Your score was: #{user_score}"
puts "Congrats you win!"
