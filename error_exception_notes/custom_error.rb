class LifeboatFullError < StandardError
end

class Lifeboat
  def initialize
    @num_passengers = 0
    @max_passengers = 3
  end

  def board
    if full?
      raise "The boat is full! Find another boat!" #so now when this shit gets raised
#we get access to the standarderror goodies 
    end

    @num_passengers += 1
  end

  def full?
    @num_passengers == @max_passengers
  end
end
