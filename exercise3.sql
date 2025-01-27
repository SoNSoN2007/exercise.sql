1) SELECT * FROM payment WHERE amount > 10;

2) SELECT * FROM film WHERE duration > 120;

3) SELECT title, rental_rate + 2 AS updated_rental_rate FROM film;

4) SELECT first_name FROM actor WHERE first_name LIKE '%A';

5) SELECT last_name FROM actor WHERE last_name LIKE 'W%N';

6) SELECT title FROM film WHERE category = 'Sports' AND duration BETWEEN 90 AND 120;

7) SELECT title FROM film WHERE category = 'Sports' AND duration BETWEEN 90 AND 120 ORDER BY duration DESC;

8) SELECT title FROM film WHERE category = 'Sports' AND duration BETWEEN 90 AND 120 ORDER BY duration DESC LIMIT 35;
