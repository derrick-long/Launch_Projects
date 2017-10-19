#user plays against the computer in rock paper scissors
#a game consists of a series of rounds until either has won
#the first player to win two rounds is declared the winner
#the number of rounds won by player and the computer are shown each rounds
#output the winner of the game before exiting
#the computer opponent randomly chooses
#user chooses shape by typing r, p, or s
#if the player enters an invalid shape print an error message and start next round
#if both players choose the same shape its a tie, no one wins that round

computer_wins = 0 #initalize win values
player_wins = 0


print "Hey there, do you fancy a game of rock, paper, scissors? "
answer = gets.chomp.downcase

if answer == "yes"
  puts "Woo! Let's play! Pick rock, paper, or scissors by typing r for rock p for paper or s for scissors!"
else
  puts "You're no fun."
  exit(0)
end

while player_wins < 2 && computer_wins < 2

r_p_s = ["r", "p", "s"]
computer_shoot = r_p_s.sample

print "1, 2, 3...shoot! "
player_shoot = gets.chomp

  if player_shoot == computer_shoot
    puts "You tied the computer! Nobody wins anything!"
    puts "Win count: Computer- #{computer_wins}, Player- #{player_wins}"
  elsif player_shoot == "r" && computer_shoot == "p"
    computer_wins += 1
    puts "The computer chose paper!"
    puts "Paper beats rock! Sorry you lose!"
    puts "Win count: Computer- #{computer_wins}, Player- #{player_wins}"
  elsif player_shoot == "s" && computer_shoot == "r"
    computer_wins += 1
    puts "The computer chose rock!"
    puts  "Rock beats scissors! Sorry you lose!"
    puts "Win count: Computer- #{computer_wins}, Player- #{player_wins}"
  elsif player_shoot == "p" && computer_shoot == "s"
    computer_wins += 1
    puts "The computer chose scissors!"
    puts "Scissors beats paper! Sorry you lose!"
    puts "Win count: Computer- #{computer_wins}, Player- #{player_wins}"
  elsif player_shoot == "r" && computer_shoot == "s"
    player_wins += 1
    puts "The computer chose scissors!"
    puts "Rock beats scissors! You win!"
    puts "Win count: Computer- #{computer_wins}, Player- #{player_wins}"
  elsif player_shoot == "s" && computer_shoot == "p"
    player_wins += 1
    puts "The computer chose paper!"
    puts "Scissors beats paper! You win!"
    puts "Win count: Computer- #{computer_wins}, Player- #{player_wins}"
  elsif player_shoot == "p" && computer_shoot == "r"
    player_wins += 1
    puts "The computer chose rock!"
    puts "Paper beats rock! You win!"
    puts "Win count: Computer- #{computer_wins}, Player- #{player_wins}"
  else
    puts "You gotta chose rock, paper, or scissors, silly!"
  end
end

if computer_wins == 2
  puts "Sorry the computer won this series!"
elsif player_wins == 2
  puts "Score one for humanity!"
end
