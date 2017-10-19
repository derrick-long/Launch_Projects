-- 1. What are the top 50 worst rated movies? The results should
-- include the movie title and rating and be sorted by the worst
-- rating first.

SELECT (title, rating) FROM movies ORDER BY rating ASC LIMIT 50;

-- 2. What movies do not have a rating? The results should include
-- just the movie titles in sorted order.

-- YOUR QUERY HERE
SELECT title FROM movies WHERE rating = 0;

-- 3. What movies have the word "thrilling" in their synopsis? The
-- results should just include the movie title.

SELECT title FROM movies WHERE synopsis LIKE '%thrilling%';

-- 4. What were the highest rated 'Science Fiction & Fantasy' movies
-- released in the 80's? The results should include the movie title,
-- the year released, and rating sorted by highest rating first.

SELECT (title, year, rating) FROM movies WHERE genre_id = 17 AND year between 1979 and 1990  ORDER BY rating ASC;

-- 5. What actors have starred as James Bond? The results should
-- include the actor name, movie title, year released, and be sorted
-- by year in ascending order (earliest year appears first).
SELECT  movies.title, movies.year, actors.name  FROM movies
  JOIN cast_members ON movies.id = cast_members.movie_id
  JOIN actors ON actors.id = cast_members.actor_id
  WHERE cast_members.character = 'James Bond'
  ORDER BY movies.year ASC;

-- YOUR QUERY HERE
--this one probably takes a join remember character is searched by cast member table

-- 6. What movies has Julianne Moore starred in? The results should
-- include the movie title, year released, and name of the genre,
-- sorted by genre first and then movie title.
SELECT movies.title, movies.year, genres.name FROM movies
  JOIN cast_members ON movies.id = cast_members.movie_id
  JOIN actors ON actors.id = cast_members.actor_id
  JOIN genres ON genres.id = movies.genre_id
  WHERE actors.name = 'Julianne Moore'
  ORDER BY genres.name, movies.title;

-- YOUR QUERY HERE

-- 7. What were the five earliest horror movies and what studios
-- produced them? Include the movie title, year released, and studio
-- name (if any) in the results sorted by year.
SELECT movies.title, movies.year, studios.name FROM movies
JOIN studios ON studios.id = movies.studio_id
JOIN genres ON genres.id = movies.genre_id
WHERE genres.name = 'Horror'
ORDER BY movies.year ASC
LIMIT 5;
