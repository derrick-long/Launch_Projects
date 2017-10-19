require 'spec_helper'
require_relative '../lib/player'

describe Player do
  it 'can save a players name' do
    player = Player.new("Doug","x")
    expect(player.name).to eq("Doug")
  end

let(:player) { Player.new("Doug","x") }

  it 'can save a players mark' do
    expect(player.marker).to eq("x")
  end

end
