require "sinatra"
require "pry"
require_relative "models/game.rb"

set :bind, '0.0.0.0'  # bind to all interfaces

use Rack::Session::Cookie, {
  secret: "keep_it_secret_keep_it_safe"
}

get '/' do
  session[:number_wins] ||= 0
  session[:computer] ||= nil


  erb :index
end

post '/choose' do
  rps = Game.new
  session[:winner] = rps.winner?(params[:choice])
  session[:computer] = rps.computer
  if session[:winner] == "player"
    session[:number_wins] += 1
  end

  redirect '/'
end



#need to increment wins when we win like a session counter or make it in erb?
