/*Question 10: How many copies of the film HUNCHBACK IMPOSSIBLE exist in the
system?*/
SELECT sakila.film.title, COUNT(sakila.inventory.inventory_id) AS 'number_in_inventory' FROM sakila.film
JOIN sakila.inventory ON sakila.film.film_id = sakila.inventory.film_id
GROUP BY sakila.film.title
HAVING sakila.film.title = 'HUNCHBACK IMPOSSIBLE';