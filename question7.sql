/*Question 7: Perhaps we were too hasty in changing GROUCHO to HARPO. It turns out
that GROUCHO was the correct name after all! In a single query: if the first
name of the actor is currently HARPO, change it to GROUCHO. Then write a
query to verify your change*/

# #Verification Query#
# SELECT first_name, last_name FROM sakila.actor
# WHERE first_name = 'HARPO';

#1st Query#
UPDATE sakila.actor
SET sakila.actor.first_name = 'GROUCHO'
WHERE sakila.actor.first_name = 'HARPO' AND sakila.actor.last_name = 'WILLIAMS';

#2nd Query#
SELECT actor_id, first_name, last_name FROM sakila.actor
WHERE last_name = 'WILLIAMS';