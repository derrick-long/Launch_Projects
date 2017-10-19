require 'spec_helper'
require_relative '../lib/box.rb'
require_relative '../lib/occupant.rb'

  describe Box do
    it "should have an owner" do
    box = Box.new(Occupant.new("billy","bob"))
    expect(box.owner_name).to eq("billybob")
  end

end
