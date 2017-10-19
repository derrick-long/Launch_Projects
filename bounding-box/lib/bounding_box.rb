class BoundingBox
  attr_reader :width, :height, :x, :y

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def bottom
    @y
  end

  def top
    @y + @height
  end

  def contains_point? (x_cord, y_cord)
    x_within_box(x_cord) && y_within_box(y_cord)
  end

  protected

  def x_within_box(x_cord)
    x_cord >= @x && x_cord <= right
  end

  def y_within_box(y_cord)
    y_cord <= top && y_cord >= @y
  end
end
