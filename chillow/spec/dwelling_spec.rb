require 'spec_helper'
require_relative '../lib/dwelling.rb'


describe Dwelling do
  let!(:dwelling) {Dwelling.new('628 Westover Ave.','Norfolk', 'VA','23507')}

  it "has an address" do
    expect(dwelling.address).to eq('628 Westover Ave.')
  end

  it "has a city" do
    expect(dwelling.city).to eq('Norfolk')
  end

  it "has a state" do
    expect(dwelling.state).to eq('VA')
  end

  it "has a zipcode" do
    expect(dwelling.zip).to eq('23507')
  end

end
