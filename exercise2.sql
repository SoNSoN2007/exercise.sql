CREATE TABLE film_text (
    film_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT
);

INSERT INTO film_text (film_id, title, description) VALUES
(1, 'The Matrix', 'A computer hacker learns about the true nature of his reality.'),
(2, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology.'),
(3, 'Avatar', 'A paraplegic marine dispatched to the moon Pandora on a unique mission.'),
(4, 'The Godfather', 'The aging patriarch of an organized crime dynasty transfers control to his reluctant son.'),
(5, 'The Dark Knight', 'Batman faces the Joker, a criminal mastermind who wants to create chaos in Gotham.');


SELECT title, description
FROM film_text;

SELECT 
    UPPER(address) AS Address, 
    UPPER(district) AS District, 
    UPPER(postal_code) AS `Postal Code`
FROM address;

SELECT payment_date, amount
FROM payment
LIMIT 300;
