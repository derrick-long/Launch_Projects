require 'spec_helper'
require_relative '../lib/truck.rb'
require_relative '../lib/box.rb'
require_relative '../lib/occupant.rb'
require_relative '../lib/move_module.rb'

describe Truck do
  let!(:truck) {Truck.new(5)}

  it "should have a max space value" do
    expect(truck.max_space).to eq(5)
  end

  it "should be able to add a box" do
    truck.add(Box.new(Occupant.new("bill","boberson")))
    expect(truck.space.size).to eq(1)
  end



  it "can remove a box" do
    truck.add(Box.new(Occupant.new("bill","boberson")))
    truck.remove_last
    expect(truck.space.size).to eq(0)
  end

  it "can tell us if it is full or not" do
    truck_2 = Truck.new(1)
    truck_2.add(Box.new(Occupant.new("bill","boberson")))
    expect(truck_2.full?).to eq(true)
  end

end
