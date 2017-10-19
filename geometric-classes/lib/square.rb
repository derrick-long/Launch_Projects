
class Square
  attr_reader :side, :x, :y, :length, :width

def initialize(side, x = 0, y = 0)
  @side = side
  @x = x
  @y = y
  @length = side
  @width = side
end

def diameter
  Math.sqrt(2) * @side
end

def perimeter
  4 * @side
end

def area
  @side * @side
end

def contains_point?(point_1, point_2)
  if point_1.between?(@x,0.6) && point_2.between?(@y,0.6)
    true
  else
    false
  end
end


end
