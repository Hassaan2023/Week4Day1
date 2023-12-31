-- 1. How many actors are there with the last name ‘Wahlberg’?
-- 2
-- SELECT last_name
-- FROM actor
-- WHERE last_name = 'Wahlberg'

-- 2. How many payments were made between $3.99 and $5.99?
-- 2
-- SELECT customer_id,amount
-- FROM payment
-- WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)
-- count 15 film 508
-- SELECT COUNT(actor_id),film_id
-- FROM film_actor
-- GROUP BY film_id
-- HAVING COUNT(actor_id) > 14;

-- 4. How many customers have the last name ‘William’?
-- 1
-- SELECT last_name
-- FROM customer 
-- Where last_name = 'Williams';

-- 5. What store employee (get the id) sold the most rentals?
-- John
-- SELECT staff_id, SUM(amount)
-- FROM payment
-- GROUP BY staff_id
-- ORDER BY staff_id DESC;


-- 6. How many different district names are there?
--378
-- SELECT district
-- FROM address
-- GROUP BY district
-- ORDER BY district DESC;


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Film ID 508
-- SELECT COUNT(actor_id),film_id
-- FROM film_actor
-- GROUP BY film_id
-- HAVING COUNT(actor_id) > 14;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--13
-- SELECT store_id , last_name
-- FROM customer
-- WHERE last_name like '%es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- No DATA
-- SELECT amount, customer_id
-- FROM payment  
-- WHERE customer_id between 380 and 400
-- GROUP BY amount, customer_id
-- HAVING count(amount) > 250

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- 5 ratings. Mostly PG-13
-- SELECT rating 
-- FROM film
-- GROUP BY rating
-- HAVING COUNT(rating) > 220;