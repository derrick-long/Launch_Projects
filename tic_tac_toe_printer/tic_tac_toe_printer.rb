#print grid method
#takes single arg board
#arg is a two dimensional array that reps rows and columns
require 'pry'
board = [
        [nil,"o",'x'],
        ["x", "o", nil],
        [nil, "x", "o"]
      ]
#loop through spots to find nil and change to -
# see if join works on row itself to minimize program

#problem is - is being added to the array but not REPLACING nil
def print_grid(game_board)
  game_board.each_with_index do |row, index|
    row.map!{|gamespot| gamespot.nil? ? " ": gamespot}
      puts row.join("|")
      puts "------"
    end
  end

print_grid(board)
