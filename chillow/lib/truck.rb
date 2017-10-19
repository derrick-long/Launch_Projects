require_relative 'box.rb'
require_relative 'occupant.rb'
require_relative 'move_module.rb'


class Truck
include Move
  attr_reader :max_space, :space
  def initialize(max_space)
    @space = []
    @max_space = max_space
  end


  def remove_occupant_boxes(occupant_name) #works but ugly formatting
    @space.delete_if{|box| box.owner_name == occupant_name.first_name + occupant_name.last_name}
  end

end
