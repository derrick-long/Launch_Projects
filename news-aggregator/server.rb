require 'sinatra'
require 'csv'
require_relative 'models/article_class.rb'

set :bind, '0.0.0.0'

get "/articles" do
  @articles = Article.all

  erb :articles
end

post "/articles/new" do
  article = params['article']
  url = params['url']
  description = params['description']

  new_article = Article.new(article,url,description)

  new_article.save

  redirect '/articles'
end

get "/articles/new" do
  erb :new
end
