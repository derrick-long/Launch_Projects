require_relative 'player'
require_relative 'board'
require 'pry'


class Game
  attr_reader :board
  def initialize
    @player_array = []
    @game_board = Board.new(6,5)
    @active_player = nil
    @winner = nil
  end

  def new_player
    ready = false
    until ready do
      puts  "What name would you like to be called?"
      player_name = gets.chomp
      puts "What mark would you like to use?"
      player_mark = gets.chomp
      if player_name  && player_mark != ""
      player = Player.new(player_name,player_mark)
      ready = true
      end
      @player_array << player
    end
  end



  def unique
    @player_array[0].name != @player_array[1].name
  end

  def pick_first_player
    @player_array.shuffle!
    @active_player = @player_array.first
    puts "#{@active_player.name} will go first!"
  end

  def switch_players
    if @active_player == @player_array.first
      @active_player = @player_array.last
    else
      @active_player = @player_array.first
    end
  end

  def print
    @game_board.print
  end

  def game_over?
    @winner != nil
  end

  def check_for_winner
    vertical_win
    horizontal_win unless @winner
    diagonal_win unless @winner
  end

  def horizontal_win
    matching_spots = 0
    @game_board.board.each do |row|
      row.each do |gamespot|
        if gamespot == @active_player.marker
             matching_spots += 1
        elsif matching_spots == 4
          puts "It's a horizontal win for #{@active_player.name}!"
          @winner = true
          return
        else matching_spots = 0
        end
      end
    end
  end

  def vertical_win
    matching_spots = 0
    vert_index = 0
    @game_board.board.each do |row|
      row.each_with_index do |gamespot, gamespot_index|
        if gamespot == @active_player.marker
        vert_index = gamespot_index
        end
      end
      if row[vert_index] == @active_player.marker
          matching_spots += 1
      else
          matching_spots = 0
      end
      if matching_spots == 4
        puts "It's a vertical win for #{@active_player.name}!"
        @winner = true
        return nil
      end
    end
  end

  def diagonal_win
    @game_board.board.each_with_index do |row, row_index|
      row.each_with_index do |gamespot, col_index|
        if @winner == true
          return nil
        else
          if row_index >= 3 && col_index >= 3
            check_downwards_win(row_index, col_index)
          elsif row_index <= 2 && col_index <= 1
            check_upwards_win(row_index, col_index)
          end
        end
      end
    end
  end




  def check_upwards_win(row, col)
    cur_piece = @game_board.board[row][col]
    piece_1 = @game_board.board[row + 1][col + 1]
    piece_2 = @game_board.board[row + 2][col + 2]
    piece_3 = @game_board.board[row + 3][col + 3]

      if cur_piece && piece_1 && piece_2 && piece_3 == @active_player.marker
        puts "It's a diagonal win for #{@active_player.name}!"
        @winner = true
      end
  end


  def check_downwards_win(row,col)
    cur_piece = @game_board.board[row][col]
    piece_1 = @game_board.board[row - 1][col - 1]
    piece_2 = @game_board.board[row - 2][col - 2]
    piece_3 = @game_board.board[row - 3][col - 3]

      if cur_piece && piece_1 && piece_2 && piece_3 == @active_player.marker
        puts "It's a diagonal win for #{@active_player.name}!"
        @winner = true
      end
  end



  def game_mark_board
    puts "#{@active_player.name} it's your turn to pick a row!"
    letter = gets.chomp
    @game_board.mark_board(letter,@active_player)
  end

  def gamestate_print
    @game_board.print
  end

  def play_game
    2.times do
      new_player
    end
    pick_first_player
      until game_over?
        game_mark_board
        gamestate_print
        check_for_winner
        switch_players
      end
  end
end
