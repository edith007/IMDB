SELECT title FROM movies where id in
(SELECT movie_id FROM stars WHERE person_id =
(SELECT id FROM people WHERE name = "Chadwick Boseman"))
ORDER BY (SELECT rating FROM ratings WHERE movie_id = id)
DESC
LIMIT 5;