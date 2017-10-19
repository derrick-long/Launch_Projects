DROP TABLE IF EXISTS comments;
DROP TABLE  IF EXISTS groceries;



CREATE TABLE groceries (
  id serial PRIMARY KEY,
  name VARCHAR(300) NOT NULL
);


CREATE TABLE comments (
  id serial PRIMARY KEY,
  user_name VARCHAR(255),
  body VARCHAR(300),
  grocery_id INTEGER REFERENCES groceries(id)
);
