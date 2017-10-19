require 'pg'
require 'csv'

def db_connection
  begin
    connection = PG.connect(dbname: "ingredients")
    yield(connection)
  ensure
    connection.close
  end
end

csv_recipe = CSV.readlines('ingredients.csv')

csv_recipe.each do |step|
  db_connection do |conn|
    recipe_step = step[1]
    sql = 'INSERT INTO recipe (step) VALUES ($1)'
    result = conn.exec_params('SELECT step FROM recipe WHERE step=$1',[recipe_step])
    if result.to_a.empty?
      conn.exec_params(sql, [recipe_step])
    end
  end
end


db_connection do |conn|
  print_stuff = conn.exec_params('SELECT step FROM recipe')
  print_stuff.each_with_index do |step, index|
    puts "#{index + 1}. #{step['step']}"
  end
end
