require_relative 'occupant.rb'


class Box
  attr_reader :owner_name
  def initialize(owner)
    @owner_name = owner.first_name + owner.last_name
  end
end
