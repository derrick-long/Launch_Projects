require 'pry'
class Container
  attr_reader :weight, :maximum_holding_weight, :count
  attr_accessor :ingredients
def initialize(weight, maximum_holding_weight)
  @weight = weight
  @maximum_holding_weight = maximum_holding_weight
  @ingredients = [] #
  @count = 0
  end

def which_ingredient
  @ingredients.each do |ingredient|
  return ingredient.name
  end
end


def fill_with_ingredient(ingredient)
  @ingredients << ingredient
  @ingredients.each do |ingredient|
  @count += @maximum_holding_weight/ingredient.weight
  @weight += @maximum_holding_weight
  end
end

def how_many_ingredients
  @count
end

 def remove_one_ingredient
   @count -= 1
end

def empty
  @count = 0
end


end
