/*Question 12: Insert a record to represent Mary Smith renting the movie ACADEMY
DINOSAUR from Mike Hillyer at store number 1 today. Then write a query to
capture the exact row you entered into the rental table.
+ (Note: Your rental date value will show the date and time you entered the
record, not 2021.)*/

#Query 1#
INSERT INTO sakila.rental (rental_date, inventory_id, customer_id, staff_id, last_update)
VALUES (current_timestamp(), '1', '1', '1', current_timestamp());

#Query 2# 
SELECT * FROM sakila.rental
WHERE year(sakila.rental.rental_date) = 2024 AND month(sakila.rental.rental_date) = 10 AND day(sakila.rental.rental_date) = 16;