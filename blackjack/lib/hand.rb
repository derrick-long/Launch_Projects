require_relative 'deck'
#see if this fixes no method error


class Hand
attr_reader :cards

  def initialize(cards)
    @cards = cards

  end
end
