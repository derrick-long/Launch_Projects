require_relative 'deck'
require_relative 'hand'
require_relative 'card'
require 'pry'

class Game

  FACES = ['J', 'Q', 'K']

  def initialize(player)
    @player = player
    @deck = Deck.new
    @player_hand = Hand.new(@deck.deal(2))
    @dealer_hand = Hand.new(@deck.deal(2))
  end

  def calculate_score(hand)
    score = 0
    hand.cards.each do |card|
      if FACES.include?(card.rank)
       score += 10
      elsif card.rank == 'A'
        if score < 11
         score += 11
        elsif score == 11
           score += 1
        end
      else
       score += card.rank
      end
    end
  score
  end



  def cards_dealt(hand)
    dealt = ""
    hand.cards.each do |card|
    dealt <<"You were dealt the #{card.rank} of #{card.suit} \n"
    end
    dealt
  end

  def hit(hand)
    hand.cards  << @deck.deal(1)
    hand.cards.flatten!
  end

  def dealer_face_up
    face_up = ""
      face_up  << "#{@dealer_hand.cards.last.rank} of "
      face_up << "#{@dealer_hand.cards.last.suit}"
      face_up
  end

  def play_dealer_hand
    dealer_hit = "The dealer hit! He drew a #{@dealer_hand.cards.last.rank}!" #not getting the right card here
    while calculate_score(@dealer_hand) < 17
      hit(@dealer_hand)
      dealer_hit
    end
  end

  def winner
    if calculate_score(@player_hand) > calculate_score(@dealer_hand) && calculate_score(@player_hand) <= 21
      puts "Congrats you win!"
    elsif calculate_score(@player_hand) > 21
      puts   "Sorry you busted!"
    elsif  calculate_score(@dealer_hand) > calculate_score(@player_hand) && calculate_score(@dealer_hand) <= 21
      puts "Sorry the dealer won!"
    elsif calculate_score(@dealer_hand) > 21
      puts "The dealer busted! You win!"
      end
  end

  def play_game
    player_choice = "yes or no"
    puts "Hello #{@player}!"
    puts cards_dealt(@player_hand)
    puts "Your current score is #{calculate_score(@player_hand)}"
    puts "The dealer has a " + dealer_face_up + " showing!"
      until player_choice == 'n'
      puts "Do you want to hit? (y/n)?"
      player_choice = gets.chomp
          if  player_choice.downcase == 'y'
            hit(@player_hand)
            puts "Your new score is " + "#{calculate_score(@player_hand)}"
          elsif calculate_score(@player_hand) > 21
            puts "Sorry you busted!"
            break
          else
            puts "Please select 'y' or 'n'."
          end
      end
    puts play_dealer_hand
    puts "The dealer's score is #{calculate_score(@dealer_hand)}!"
    puts winner
  end
end
