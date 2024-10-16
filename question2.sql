/*Question 2: You need to find the ID number, first name, and last name of an actor,
where the only thing you know about him is his first name, Joe.
+ Create an additional query to find all the movies that Joe has been in*/

#1st Query#
SELECT actor_id, first_name, last_name FROM sakila.actor 
WHERE first_name = 'Joe';

#2nd Query#
SELECT sakila.actor.actor_id, first_name, last_name, sakila.film_text.title AS 'Movie Title' FROM sakila.actor
JOIN sakila.film_actor ON sakila.actor.actor_id = sakila.film_actor.actor_id
JOIN sakila.film_text ON sakila.film_actor.film_id = sakila.film_text.film_id
WHERE sakila.actor.actor_id = 9
GROUP BY sakila.film_text.title;