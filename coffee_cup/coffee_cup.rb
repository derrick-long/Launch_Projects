require 'pry'

class CoffeeCup
  def initialize(liquid, capacity)
    @coffee = liquid
    @capacity = capacity
  end

def sip!
    if @coffee <= 0
    puts "There's no more coffee left to sip!"
  else
    @coffee -= 2
  end
end

def spill!
  @coffee = 0
end

def refill!
  @coffee = @capacity - 2
end



end
