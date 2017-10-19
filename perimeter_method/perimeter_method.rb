#takes two args width and height should return the perimeter

def perimeter(height = nil, width)
  if height.nil?
    width * 4
  else
  height * 2 + width * 2
  end
end
