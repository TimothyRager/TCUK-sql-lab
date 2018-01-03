INSERT INTO movies (TITLE, RUNTIME, GENRE, IMDB_SCORE, RATING)
VALUES ('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'), ('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'), ('Waltz With Bashir', 90, 'Documentary', 8.0, 'R'),
('Spaceballs', 96, 'Comedy', 7.1, 'PG'), ('Monsters Inc.', 92, 'Animation', 8.1, 'G');

INSERT INTO movies (TITLE, RUNTIME, GENRE, IMDB_SCORE, RATING)
VALUES ('Pan''s Labyrinth', 118, 'Drama', 8.2, 'R'),
('The Fountain', 96, 'Drama', 7.3, 'PG-13'), 
('A Clockwork Orange', 136, 'Crime', 8.3, 'R'), 
('Moulin Rouge!', 127, 'Drama', 7.6, 'PG-13'), 
('The Wave (Die Welle)', 107, 'Drama', 7.6, 'Not Rated'), 
('The Postman', 177, 'Action', 6.0, 'R');

SELECT * FROM movies WHERE genre='Sci-Fi';

SELECT * FROM movies WHERE imdb_score>=6.5;

SELECT * FROM movies WHERE rating IN ('G', 'PG') AND runtime<100;

SELECT genre, AVG(runtime) FROM movies WHERE imdb_score<7.5 GROUP BY genre;

UPDATE movies SET rating = 'R' WHERE title = 'Starship Troopers';

SELECT * FROM movies;

SELECT id, rating FROM movies WHERE genre IN ('Horror', 'Documentary');

SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score) FROM movies GROUP BY rating;

SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score) FROM movies GROUP BY rating HAVING COUNT(rating)>1;

DELETE FROM movies WHERE rating = 'R';

SELECT * FROM movies;
