/*Question 1: Display the first and last name of each actor in a single column in upper
case letters. Name the column in the results Actor Name.
+ Create an additional query to sort Actor Name by the actor’s last name*/

SELECT concat(upper(first_name), " ", upper(last_name)) AS 'Actor Name' FROM sakila.actor
WHERE 'Actor Name' IN
(SELECT 'Actor Name' FROM sakila.actor)
ORDER BY last_name;