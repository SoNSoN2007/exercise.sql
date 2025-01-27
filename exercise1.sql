CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    job_title VARCHAR(100),
    salary DECIMAL(10, 2),
    department VARCHAR(100),
    bio TEXT
);
ALTER TABLE employees
ADD hire_date DATE;

ALTER TABLE employees
ADD job_grade VARCHAR(10);

ALTER TABLE employees
DROP COLUMN job_grade;

TRUNCATE TABLE employees;

DROP TABLE employees;
