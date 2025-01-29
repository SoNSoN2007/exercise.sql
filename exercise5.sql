create table costumer
(
  frist_name varchar(50) not null,
  last_name varchar(50) not null,
  email varchar(50) not null,
  address varchar(50) not null
); 

create table city
(
  address varchar(50) not null ,
  City varchar(50) not null
);

INSERT INTO costumer (frist_name, last_name, email, address)
VALUES 
('Ali', 'Ahmed', 'ali.ahmed@example.com', '123 Main Street'),
('Sara', 'Hassan', 'sara.hassan@example.com', '456 Elm Street'),
('Khaled', 'Omar', 'khaled.omar@example.com', '789 Oak Avenue');

INSERT INTO city (address, City)
VALUES 
('123 Main Street', 'Cairo'),
('456 Elm Street', 'Alexandria'),
('789 Oak Avenue', 'Asyut');


select costumer.frist_name,costumer.last_name,costumer.email,costumer.address,
city.address,city.City
from
costumer join city ON city.City = costumer.City;
