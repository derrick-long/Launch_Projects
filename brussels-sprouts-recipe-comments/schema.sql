CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name  VARCHAR(255)
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  user_name VARCHAR (255),
  comment VARCHAR(255),
  recipe_id INTEGER REFERENCES recipes(id)
);
