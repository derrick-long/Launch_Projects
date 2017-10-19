require_relative 'dwelling.rb'
require_relative 'occupant.rb'
require_relative 'move_module.rb'
require 'pry'

class Apartment < Dwelling
include Move
  attr_reader :rent_price, :lease_start, :lease_end, :space, :max_space
  def initialize(address,city,state,zip)
    super
    @rent_price = nil
    @lease_start = nil
    @lease_end = nil
    @space = []
    @max_space = 2
  end


  def rent(price)
    @rent_price = price
  end

  def set_lease(lease_start,lease_end)
    @lease_start = lease_start
    @lease_end = lease_end
  end









end
