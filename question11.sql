/*Question 11:  The music of Queen and Kris Kristofferson have seen an unlikely
resurgence. As an unintended consequence, films starting with the letters
K and Q have also soared in popularity. Use subqueries to display the titles of movies starting with the letters K and Q whose language is english*/

SELECT sakila.film.title FROM sakila.film
JOIN sakila.language ON sakila.film.language_id = sakila.language.language_id
WHERE sakila.film.title LIKE "K%" OR 
sakila.film.title LIKE "Q%"
AND sakila.film.language_id = 1; 