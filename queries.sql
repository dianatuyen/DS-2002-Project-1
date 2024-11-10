#Uploading data
USE sakila;
SELECT * FROM customer;
SELECT * FROM rental;
SELECT * FROM inventory;
SELECT * FROM payment;
SELECT * FROM film;
SELECT * FROM store;

# query 1: joining customers & payment with customer id
SELECT * FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id;

# query 2: joining film inventory id & inventory with store
SELECT * FROM inventory
INNER JOIN film
ON inventory.film_id = film.film_id;
SELECT * FROM inventory
INNER JOIN store
ON inventory.store_id = store.store_id;

# query 3: joining address & store
SELECT * FROM store
INNER JOIN address
ON store.address_id = address.address_id;

