require_relative 'deck'
require 'pry'

class Hand
  SUITS = ['♦', '♣', '♠', '♥']

  FACES = ['J', 'Q', 'K']
  #remember to do something about that Ace
  attr_reader :cards
  def initialize(cards)
    @cards = cards

  end


  def calculate_hand #ugly stuff! 
    card_value = 0
    @cards.each do |card|
       card.delete!(card[-1])
      if FACES.include?(card)
         card_value += 10
      elsif card == 'A'
        if card_value < 11
           card_value += 11
        elsif card_value == 11
             card_value += 1
        end
      else
         card_value += card.to_i
      end
        if card_value > 21
        return "Someone is cheating!"
        end
    end
    card_value
  end
end
