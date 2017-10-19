require 'spec_helper'
require_relative '../lib/apartment.rb'
require_relative '../lib/occupant.rb'
require_relative '../lib/dwelling.rb'
require_relative '../lib/move_module.rb'

describe Apartment do
  let!(:apartment) {Apartment.new('628 Westover Ave.','Norfolk', 'VA','23507')}

  it 'has a rent price' do
    apartment.rent(900.00)
    expect(apartment.rent_price).to eq(900.00)
  end

  it 'has lease dates' do
    apartment.set_lease("12/1","13/4")
    expect(apartment.lease_start).to eq("12/1")
    expect(apartment.lease_end).to eq("13/4")
  end

  it "can add occupants" do
    apartment.add(Occupant.new("Bill","Thompson"))
    expect(apartment.space.size).to eq(1)
  end

  it "can remove occupants" do
    apartment.add(Occupant.new("Bill","Thompson"))
    apartment.remove_last
    expect(apartment.space.size).to eq(0)
  end

  it "can tell us if it is full or not" do
    apartment.add(Occupant.new("Bill","Thompson"))
    expect(apartment.full?).to eq(false)
  end




end
