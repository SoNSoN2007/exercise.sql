CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT
);

CREATE TABLE courses (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE student_courses (
    id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

CREATE TABLE classes (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

ALTER TABLE students
ADD class_id INT,
ADD FOREIGN KEY (class_id) REFERENCES classes(id);
