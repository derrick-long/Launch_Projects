require 'pry'
class Game
attr_reader :computer
  def initialize
    @computer = nil
  end

  def computer_turn
    rps = ["Rock","Paper","Scissors"]
    rps.sample
  end

  def winner?(player_choice)#whatever we get from our sessions

    computer_choice = computer_turn
    @computer = computer_choice

    if computer_choice == player_choice
       "draw"
    elsif computer_choice == "Rock" && player_choice == "Paper"
      "player"
    elsif computer_choice == "Paper" && player_choice == "Rock"
      "computer"
    elsif computer_choice == "Scissors" && player_choice == "Paper"
       "computer"
    elsif computer_choice == "Paper" && player_choice == "Scissors"
       "player"
    elsif computer_choice == "Rock" && player_choice == "Scissors"
        "computer"
    elsif computer_choice == "Scissors" && player_choice == "Rock"
        "player"
    else
      "error"
    end
  end



end
