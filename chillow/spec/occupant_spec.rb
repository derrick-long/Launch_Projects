require 'spec_helper'
require_relative '../lib/occupant.rb'

describe Occupant do
  let!(:person) {Occupant.new("Bill", "Johnson")}
  it "has a first name" do
    expect(person.first_name).to eq("Bill")
  end

  it "has a last name" do
    expect(person.last_name).to eq("Johnson")
  end 

end
