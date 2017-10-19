require 'pry'



class Rectangle
  def initialize(width, height = nil)
    @width = width
    @height = height
    if height.nil?
      @height = width
    end
  end

def area
  @area = @width * @height
  end
end


binding.pry
