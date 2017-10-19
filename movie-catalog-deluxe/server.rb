require "sinatra"
require "pg"
require "pry"

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development do
  set :db_config, { dbname: "movies" }
end

configure :test do
  set :db_config, { dbname: "movies_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

get "/actors" do
  @actors = db_connection {|conn| conn.exec("SELECT * FROM actors ORDER BY name")}
  erb :'actors/index'
end

get "/actors/:id" do
  actor_index = params[:id]
  @actor = db_connection {|conn| conn.exec("SELECT movies.title, cast_members.character, movies.id, actors.name FROM movies
     JOIN cast_members ON movies.id = cast_members.movie_id
     JOIN actors ON actors.id = cast_members.actor_id
     WHERE actors.id = ($1)",[actor_index])}

  erb :'actors/show'
end

get "/movies" do
  @movies = db_connection {|conn| conn.exec("SELECT movies.title, movies.year, movies.rating, movies.id, genres.name AS genre, studios.name AS studio  FROM movies
    JOIN genres ON genres.id = movies.genre_id
    JOIN studios on studios.id = movies.studio_id
    ORDER BY movies.title")}
  erb :'movies/index'
end

get "/movies/:id" do
  movie_index = params[:id]
  @movie = db_connection {|conn| conn.exec("SELECT genres.name AS genre, studios.name AS studio, movies.title, movies.year, movies.rating FROM movies
    JOIN genres ON genres.id = movies.genre_id
    JOIN studios on studios.id = movies.studio_id
    WHERE movies.id = ($1)",[movie_index])}
  @cast_info = db_connection {|conn| conn.exec("SELECT actors.name AS actor, actors.id, cast_members.character AS character FROM movies
    JOIN cast_members ON movies.id = cast_members.movie_id
    JOIN actors ON actors.id = cast_members.actor_id
    WHERE movies.id = ($1)",[movie_index])}

    #also need links
  erb :'movies/show'
end
