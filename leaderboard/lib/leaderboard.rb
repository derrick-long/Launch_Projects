require_relative 'team'
require 'pry'
class Leaderboard
  GAME_INFO = [
      {
        home_team: "Patriots",
        away_team: "Broncos",
        home_score: 17,
        away_score: 13
      },
      {
        home_team: "Broncos",
        away_team: "Colts",
        home_score: 24,
        away_score: 7
      },
      {
        home_team: "Patriots",
        away_team: "Colts",
        home_score: 21,
        away_score: 17
      },
      {
        home_team: "Broncos",
        away_team: "Steelers",
        home_score: 11,
        away_score: 27
      },
      {
        home_team: "Steelers",
        away_team: "Patriots",
        home_score: 24,
        away_score: 31
      }
  ]
    attr_reader :team_records

  def initialize
    @team_records = [] #maybe splitting this up is more kosher?
    GAME_INFO.each do |game| #not iterating all the way through
      if !@team_records.find{ |team| team.name == game[:home_team]}
        @team_records << Team.new(game[:home_team])
      end
      if !@team_records.find {|team| team.name == game[:away_team]}
      @team_records << Team.new(game[:away_team])

      end
    end
  end
#or we could just build on our initalize method
  def wins_losses
    GAME_INFO.each do |game|
      @team_records.each do |team|
        if game[:home_team] == team.name && game[:home_score] > game[:away_score] #refactor later
        team.wins += 1
        elsif game[:home_team] == team.name && game[:home_score] < game[:away_score]
        team.losses += 1
        end
      end
    end

    GAME_INFO.each do |game|
      @team_records.each do |team|
        if game[:away_team] == team.name && game[:away_score] > game[:home_score] #refactor later
          team.wins += 1
        elsif game[:away_team] == team.name && game[:away_score] < game[:home_score]
          team.losses += 1
        end
      end
    end

  end

#take index of team_records + 1
#set that as a rank for each item in our team_records array
#so we have the sorted array to work with now all we need to do is iterate through and add it to the rank variable in our objects

  def rank
    @team_records.sort_by! do |team|
      team.wins
    end  #still correct
    @team_records.reverse! #up until here we're okay

    @team_records.each_with_index do |team, index| #line that doesn't function as expected
      team.rank = index + 1  #returns only two teams repeated twice, with wrong indexes
    end
  end


  def output
    #remember no puts
    #will need to iterate after building "space"
    #at this point should already be in correct order
    line = "-------------------------------"
    header = "Team     Rank      Wins    Losses"
    line
    header
    @team_records.each do |team| #good shape
    "| #{team.name.rjust(4)}    #{team.rank}  #{team.wins}      #{team.losses}|"
    end
    line
  end
end
