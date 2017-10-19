
module Move

  def add(thing)
    if @space.size < @max_space
      @space << thing
    else
      return "You have run out of space!"
    end
  end

  def remove_last
    @space.pop
  end

  def full?
    @space.size == @max_space
  end 


end
