require 'spec_helper'
require_relative '../lib/dwelling.rb'
require_relative '../lib/house.rb'

describe House do
  let!(:home) {House.new('628 Westover Ave.','Norfolk', 'VA','23507')}

  it 'should have an asking price' do
    expect(home.set_price(1000)).to eq(1000)
  end




end
