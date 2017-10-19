




class Pizza
attr_accessor :pizza_type

  TOPPINGS = {cheese: 0.10, green_pepper: 0.30, onion: 0.50, mushroom: 0.70, pepperoni: 1.10, jalapeno: 1.30, sausage: 1.70, bacon: 1.90}

  def initialize(pizza_type = [:cheese])
    @pizza_type = pizza_type
    @pizza_toppings = {cheese: 0.10, green_pepper: 0.30, onion: 0.50, mushroom: 0.70, pepperoni: 1.10, jalapeno: 1.30, sausage: 1.70, bacon: 1.90}
  end


  def cost
  cost = 8.00 #defaults value
  @pizza_type.each do |topping| #iterates
    cost += @pizza_toppings[topping] #increments our base cost and finds the value of our topping by the key
    end
      cost  #if need to handle bad inputs add a includes if statement here
    end


  def meats
    @pizza_type & [:sausage, :pepperoni, :bacon]
  end

  def other_toppings
    @pizza_type & [:cheese, :green_pepper, :onion, :mushroom, :jalapeno]
  end

  def self.toppings #first time doing a class method
      TOPPINGS.each do |topping, cost|
        formatted_topping = topping.to_s.gsub('_',' ')
        formatted_cost = '%.2f' % cost #formats a float to display two decimal places
        puts "#{formatted_topping} - $#{formatted_cost}"
      end
    end
end
