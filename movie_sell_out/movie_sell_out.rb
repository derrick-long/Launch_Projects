require 'pry'


class Theater
  attr_accessor :seats, :patrons #keep forgetting these jams. They are important
  def initialize(number_of_seats)
    @patrons = 0
    @seats = number_of_seats
  end

def admit!(ticket_amount = 1)
  if @patrons >= @seats
    puts "Sorry we're out of seats!"
  else
  @patrons += ticket_amount
  end
end

def at_capacity? #coulda saved some lines on this
  if @patrons == @seats
    true
  else
    false
  end
end

def record_walk_outs!(walk_outs = 1)
  @patrons -= walk_outs
end






end
