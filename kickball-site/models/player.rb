require_relative "./team_data"

class Player
  attr_reader :team_mate
  def initialize(team_position,team_player)
    @team_mate = {position: team_position, player: team_player}
  end
  #remember this is a hash!
end
