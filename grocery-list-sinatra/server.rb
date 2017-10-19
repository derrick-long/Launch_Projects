require 'sinatra'
require 'csv'
require 'pry'
require_relative 'models/grocery_item.rb'


set :bind, '0.0.0.0'



get '/grocery-list' do
  @list = GroceryItem.all
  erb :index
end

get '/' do
  redirect '/grocery-list'
end

post '/grocery-list' do
  if params[:name].strip != ""
    name =  params[:name]
    item = GroceryItem.new(name)
    item.save
    redirect '/grocery-list'
  else
    redirect '/grocery-list'
    erb :index
  end
end
