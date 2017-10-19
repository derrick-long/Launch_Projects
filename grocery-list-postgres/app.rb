require "sinatra"
require "pg"

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development do
  set :db_config, { dbname: "grocery_list_development" }
end

configure :test do
  set :db_config, { dbname: "grocery_list_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end



get "/" do
  redirect "/groceries"
end

get "/groceries" do
  @groceries = db_connection {|conn| conn.exec('SELECT * FROM groceries')}
  erb :groceries
end

post "/groceries" do
  if params[:name] != ""
    db_connection do |conn|
      sql = 'INSERT INTO groceries (name) VALUES ($1)'
      item_name = params[:name]
      conn.exec_params(sql,[item_name])
    end
  end
  redirect "/groceries"
end

get "/groceries/:id" do
  item_id = params[:id]
  @comments = db_connection {|conn| conn.exec("SELECT comments.user_name, comments.body
    FROM groceries
    JOIN comments ON comments.grocery_id = groceries.id
    WHERE groceries.id = ($1)", [item_id])}
  @grocery_item = db_connection {|conn| conn.exec("SELECT groceries.name
    FROM groceries
    WHERE groceries.id = ($1)", [item_id])}

  erb :show
end
