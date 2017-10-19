require 'pry'



class Ingredient
  attr_reader :quantity, :unit, :name




  def initialize(quantity,unit,name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def name
    @name
  end


  def summary
   print " #{@quantity.to_f}, #{@unit},#{@name}"
 end

#ingredient class method called parse takes in a string and then generates the correct format

  def self.parse(unformatted_ingredient) #great success
  formatting_ingredient = unformatted_ingredient.split(" ")
  quantity = formatting_ingredient[0].to_i
  unit  = formatting_ingredient[1]
  name = formatting_ingredient[2]

  Ingredient.new(quantity, unit, name)
  end
end







#Another class starts here

class Recipe

  attr_reader :name, :ingredients, :instructions

SAFE_INGREDIENTS = ["Brussels sprouts", "spinach", "eggs", "milk", "tofu", "seitan",
    "bell peppers", "quinoa", "kale", "chocolate", "beer", "wine", "whiskey"]



  def initialize(name, ingredients, instructions)
    @name = name
    @ingredients = ingredients
    @instructions = instructions
  end

  def summary
    puts "Name: #{@name}"
    puts
    puts "Ingredients"
    puts
      @ingredients.each do |ingredient|
        puts " - #{ingredient.summary}"
      end
        @instructions.each_with_index do |step, index|
        puts "Instructions"
        puts
        puts "#{index + 1}. #{step}"
        end
  end

  def has_allergens #better name
    #make return true or false
    @ingredients.each do |ingredient|
      if !SAFE_INGREDIENTS.include?(ingredient)

        return true
      else
        false
    end
  end
end




end



ingredients = [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
  ]

allergy_free_name = "Whiskey Kale"
allergy_free_ingredients = [
  Ingredient.new(2.0, "quarts", "whiskey"),
  Ingredient.new(3.0, "cups", "kale")
]

allergy_free_instructions = [
  "Put whiskey in a pot.",
  "Put kale in a pot.",
  "Convince yourself this was a healthy choice."
]

allergy_free_recipe = Recipe.new(allergy_free_name, allergy_free_instructions, allergy_free_ingredients)

puts "Is #{allergy_free_recipe.name} safe? #{allergy_free_recipe.has_allergens}"
