require_relative "./team_data"
require_relative "./player.rb"

class Team
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = []
    @league = TeamData.new
    make_roster
  end


  def make_roster
    team = @name.to_sym
    @league.roll_call[team].each_pair do |position, player|
      player = Player.new(position,player)
      @roster << player
    end


  end
  #so for the team object
  #want to make a team that has a name
  #takes in player objects
  #maybe change search functionality
end
