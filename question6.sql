/*Question 6: The actor HARPO WlLLlAMS was accidentally entered in the actor table as
GROUCHO WILLIAMS. Write one query to fix the record, plus another to
verify the change.*/

#1st Query#
UPDATE sakila.actor
SET sakila.actor.first_name = 'HARPO'
WHERE sakila.actor.first_name = 'GROUCHO' AND sakila.actor.last_name = 'WILLIAMS'; 

#2nd Query#
SELECT actor_id, first_name, last_name FROM sakila.actor
WHERE last_name = 'WILLIAMS';