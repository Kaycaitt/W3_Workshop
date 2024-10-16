/*Question 8: Use JOIN to display the total amount rung up by each staff member in
August of 2005, using tables staff and payment*/
SELECT sakila.staff.first_name, sakila.staff.last_name, SUM(payment.amount) FROM sakila.staff
JOIN sakila.payment ON sakila.staff.staff_id = sakila.payment.staff_id
WHERE month(sakila.payment.payment_date) = 08 AND year(sakila.payment.payment_date) = 2005
GROUP BY sakila.staff.last_name, sakila.staff.first_name;