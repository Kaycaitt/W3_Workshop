/*Question 9: List each film and the number of actors who are listed for that film. Use
tables film_actor and film. Use inner join.*/
SELECT sakila.film.title, COUNT(sakila.film_actor.actor_id) AS 'number_of_actors' FROM sakila.film_actor
INNER JOIN sakila.film ON sakila.film_actor.film_id = sakila.film.film_id
GROUP BY sakila.film.title
ORDER BY number_of_actors DESC;