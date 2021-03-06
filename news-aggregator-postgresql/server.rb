require "sinatra"
require "pg"
require_relative "./app/models/article"

set :bind, '0.0.0.0'  # bind to all interfaces
set :views, File.join(File.dirname(__FILE__), "app", "views")

configure :development do
  set :db_config, { dbname: "news_aggregator_development" }
end

configure :test do
  set :db_config, { dbname: "news_aggregator_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

get "/articles" do
  @articles = db_connection { |conn| conn.exec("SELECT * FROM articles")}
  erb :index
end

post "/articles/new" do
  article = params['article']
  url = params['url']
  description = params['description']

  db_connection do |conn|
    conn.exec_params("INSERT INTO articles (title,url,description) VALUES ($1,$2,$3)", [article,url,description])
  end
  redirect '/articles'
end

get "/articles/new" do
  erb :new
end
