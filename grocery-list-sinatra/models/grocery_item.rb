require 'csv'
class GroceryItem
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def self.all
    CSV.read('grocery_list.csv',:headers => true)
  end

  def save
    CSV.open('grocery_list.csv','a') do |csv|
      csv << [@name]
    end
  end

end
