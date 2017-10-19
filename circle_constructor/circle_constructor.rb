require 'pry'



class Circle
attr_reader :radius
  def initialize(circle_variable)
  if circle_variable.kind_of?(Hash) #this goes with the else on 14
    if circle_variable[:radius].nil? #this ends on line #13
      @raidus = circle_variable[:diameter]/2 #only works with the specific key
    else
      @raidus = circle_variable[:radius] #ditto here
    end
  else
    @radius = circle_variable
    end
  end
end

binding.pry
