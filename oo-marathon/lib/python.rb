require_relative 'reptile.rb'
class Python
include Reptile
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def speak
    "SSSSssssss..."
  end
end
