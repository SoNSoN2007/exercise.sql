CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address_id INT NOT NULL,
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE address (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(255) NOT NULL,
    city_id INT NOT NULL,
    FOREIGN KEY (city_id) REFERENCES city(city_id)
);

CREATE TABLE city (
    city_id INT PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(100) NOT NULL
);

INSERT INTO city (city) VALUES ('New York'), ('Los Angeles'), ('Chicago');

INSERT INTO address (address, city_id) 
VALUES ('123 Main St', 1), ('456 Elm St', 2), ('789 Oak St', 3);

INSERT INTO customer (first_name, last_name, email, address_id) 
VALUES ('John', 'Doe', 'john.doe@example.com', 1),
       ('Jane', 'Smith', 'jane.smith@example.com', 2),
       ('Emily', 'Johnson', 'emily.johnson@example.com', 3);
