class Board
require_relative 'player'
require 'pry'

  attr_reader :num_rows, :num_cols
  attr_accessor :board
  def initialize(num_rows,num_cols)
    @board = []
    @num_rows = num_rows
    @num_cols = num_cols

    num_rows.times do
      new_row = []
      num_cols.times do
        new_row << nil
      end
      @board << new_row
    end
    @board
  end

  def print #alter to use our marks
    spots = []
    letters = ['a','b','c','d','e']
    @board.each do |row|
      row_output = "| "

      row.each do |space|
        if space.nil?
          row_output << "_"
        else
          row_output << space
        end
        row_output << " | "
      end

      spots << row_output
    end
    spots << "| " + letters.join(" | ") + " |"
    puts spots
  end

  def convert_letter_to_col(letter)
    letters =  ["a","b","c","d","e","f"]
    converted_column = letters.index(letter)
    converted_column
  end

  def mark_board(letter,player) #this can probably just be passed on if I use a player instance for game
    col_num = convert_letter_to_col(letter)
    row_num = lowest_available_row(col_num)
    @board[row_num][col_num] = player.marker
  end

  def lowest_available_row(col)
    lowest = nil
    @board.each_with_index do |row, index|
      if row[col] == nil
       lowest = index
      end
    end
     lowest
  end





#basically needs to output my row # so we can use our coordinate plane
   #similar operation to this but spot must also be nil





      #so what we need is start from zero and go to five (index, looking for a space that is == nil and has the matching converted column)

    # loop through and check each row and stop at a certain point


end
