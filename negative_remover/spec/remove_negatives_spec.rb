require 'spec_helper'

require_relative '../lib/remove_negatives'

describe "remove_negatives method" do
#red
#green
#refactor
  it  'removes negatives from the [-1, 2, 3] list' do
    list = [-1,2,3]
    expect(remove_negatives(list)).to eq([2,3])
  end

  it 'removes negatives from the [-1, -2, 2, 4] list' do
    list = [-1,-2,2,4]
    expect(remove_negatives([-1,-2,2,4])).to eq([2,4])
  end

  it 'removes nothing from the [] list' do
    list = []
    expect(remove_negatives(list)).to eq([])
  end

  it 'removes nothing from a list of all positive numbers' do
    list = [3,4,5,6,8]
    expect(remove_negatives(list)).to eq(list)
  end
end
