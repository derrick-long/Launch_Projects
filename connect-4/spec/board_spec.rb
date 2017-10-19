require 'spec_helper'
require_relative '../lib/board'

describe Board do

  it 'can be initalized with six rows and five columns' do
    board = Board.new(6,5)
    expect(board.num_rows).to eq(6)
    expect(board.num_cols).to eq(5)
  end

  it 'can be modified by players to put pieces on the board'

  it 'starts with empty spots'
end
