

#user plays the computer in rock paper scissors
#game consists of one round
#computer randomly chooses between rock, paper and scissors
#user chooses shape by typing "r" "p" or "s"
#give results of the game before exiting
#if player enters invalid shape print an error message
#if both players choose the same shape, it is a tie

print "Hey there, do you fancy a game of rock, paper, scissors? "
answer = gets.chomp.downcase

if answer == "yes"
  puts "Woo! Let's play! Pick rock, paper, or scissors by typing r for rock p for paper or s for scissors!"
else
  puts "You're no fun."
  exit(0)
end
r_p_s = ["r", "p", "s"]
computer_shoot = r_p_s.sample

print "1, 2, 3...shoot! "
player_shoot = gets.chomp


if player_shoot == computer_shoot
  puts "You tied the computer! You're both winners!"
elsif player_shoot == "r" && computer_shoot == "p"
  puts "The computer chose paper!"
  puts "Paper beats rock! Sorry you lose!"
elsif player_shoot == "s" && computer_shoot == "r"
  puts "The computer chose rock!"
  puts  "Rock beats scissors! Sorry you lose!"
elsif player_shoot == "p" && computer_shoot == "s"
  puts "The computer chose scissors!"
  puts "Scissors beats paper! Sorry you lose!"
elsif player_shoot == "r" && computer_shoot == "s"
  puts "The computer chose scissors!"
  puts "Rock beats scissors! You win!"
elsif player_shoot == "s" && computer_shoot == "p"
  puts "The computer chose paper!"
  puts "Scissors beats paper! You win!"
elsif player_shoot == "p" && computer_shoot == "r"
  puts "The computer chose rock!"
  puts "Paper beats rock! You win!"
else
puts "You gotta chose rock, paper, or scissors, silly!"
end
