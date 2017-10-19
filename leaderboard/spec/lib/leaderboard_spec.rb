require 'spec_helper'

RSpec.describe Leaderboard do
  describe ".new" do
    it "creates a new team by iterating through game info using only their names" do
      leaderboard = Leaderboard.new
      expect(leaderboard.team_records.first).to be_a(Team)
    end
  end
    let(:leaderboard) { Leaderboard.new }





    describe "#wins_losses" do #make specific to a team ya dummy and return their record?
      it "updates a teams wins and losses in the team_records array" do
        leaderboard.wins_losses
        expect(leaderboard.team_records.first.wins).to eq(3)
    end
  end


  describe "#rank" do
    it "ranks the teams in order of the number of wins acheived" do
    leaderboard.wins_losses
    leaderboard.rank
    expect(leaderboard.team_records.first.rank).to eq(1)
    end
  end
end

#must create team object by iterating through game info to create teams with only names
#iterate through game info again to set # of wins and losses
#sorts team by wins and set their ranks
#display leaderboard in terminal
