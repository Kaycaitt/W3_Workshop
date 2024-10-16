/*Question 4: Find all actors whose last names contain the letters LI. This time, order the
rows by last name and first name, in that order.
+ Create a second version of this query that adds a count of the total
number of movies each actor has been in*/

#1st Query#
SELECT actor_id, first_name, last_name FROM sakila.actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name;

#2nd Query#
SELECT sakila.actor.actor_id, first_name, last_name, COUNT(sakila.film_actor.actor_id) AS '# of Movies' FROM sakila.actor
JOIN sakila.film_actor ON sakila.actor.actor_id = sakila.film_actor.actor_id
WHERE last_name LIKE '%LI%'
GROUP BY actor_id
ORDER BY last_name, first_name;