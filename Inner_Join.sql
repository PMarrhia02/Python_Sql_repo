CREATE DATABASE UniversityDB;
USE UniversityDB;

CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50)
);

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

Select * from students;
select * from courses;

INSERT INTO courses (course_name) VALUES 
('Mathematics'), 
('Physics'), 
('Computer Science');

INSERT INTO students (name, course_id) VALUES 
('Rahul', 1), 
('Priya', 2), 
('Amit', 2), 
('Sneha', 3), 
('Vikas', NULL);

SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.id;



