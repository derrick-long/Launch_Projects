class Lifeboat
  def initialize
    @num_passengers = 0
    @max_passengers = 3
  end

  def board
    if full?
      raise "The boat is full! Find another boat!"
    end

    @num_passengers += 1
  end

  def full?
    @num_passengers == @max_passengers
  end
end

#everytime we call board we check to see if the boat is full
#if so we exit the execution of the app
#This is what is known as a guard clause
#with this implementation we would rather the user check if the lifeboat is full before
#trying to board, so that an exception is not raised 
