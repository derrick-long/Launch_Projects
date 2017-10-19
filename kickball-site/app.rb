require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do

  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do

  data = TeamData.new #can be replaced with new class functions
  @team_names = data.team_names
  erb :teams
end

get "/teams/:team_name" do

  @team_name = params[:team_name]
  @team = Team.new(@team_name)

  erb :team_info
end
