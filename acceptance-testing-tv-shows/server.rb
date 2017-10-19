require 'sinatra'
require 'pry'
require 'csv'
require_relative "app/models/television_show"

set :bind, '0.0.0.0'  # bind to all interfaces
set :views, File.join(File.dirname(__FILE__), "app/views")

get "/television_shows" do
  @show_list = TelevisionShow.all
  erb :index
end

post "/television_shows/new" do
  @error = false
  if params[:title] != "" && params[:network] != "" && params[:starting_year] != "" && params[:synopsis] != ""
    title = params[:title]
    network = params[:network]
    starting_year = params[:starting_year]
    synopsis = params[:synopsis]
    genre = params[:Genre]
    show = TelevisionShow.new(title,network,starting_year,synopsis)
    show.pick_genre(genre)
    show.save
    redirect "/television_shows"
  else
    @error = true
    erb :new
  end
end


get "/television_shows/new" do
  erb :new
end
