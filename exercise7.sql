CREATE TABLE film (
    film_id INT PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    release_year INT,
    language_id INT,
    rental_duration INT,
    rental_rate DECIMAL(5, 2),
    length INT,
    replacement_cost DECIMAL(5, 2),
    rating VARCHAR(10),
    special_features TEXT
);


CREATE TABLE category (
    category_id INT PRIMARY KEY,
    name VARCHAR(255)
);


CREATE TABLE film_category (
    film_id INT,
    category_id INT,
    PRIMARY KEY (film_id, category_id),
    FOREIGN KEY (film_id) REFERENCES film(film_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);


CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    film_id INT,
    store_id INT,
    last_update TIMESTAMP,
    FOREIGN KEY (film_id) REFERENCES film(film_id)
);

CREATE TABLE store (
    store_id INT PRIMARY KEY,
    manager_staff_id INT,
    address_id INT,
    last_update TIMESTAMP
);


SELECT f.title
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Family';
