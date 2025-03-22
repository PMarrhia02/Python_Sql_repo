CREATE DATABASE college_a;
use college_a;
CREATE TABLE teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    salary DECIMAL(10,2)
);
SELECT * FROM teachers;
Insert into teachers (name, subject, experience, salary) VALUES ('Mr. Gagan', 'Math', 10, 50000.00),
('Ms. Sukhman', 'Science', 8, 48000.00),
('Mrs. Kuldeep', 'English', 12, 52000.00);
SELECT * FROM teachers;

 -- Aggregate Functions
SELECT SUM(salary) AS total_salary FROM teachers;

SELECT AVG(salary) AS average_salary FROM teachers;

SELECT MAX(salary) AS highest_salary FROM teachers;

SELECT MIN(salary) AS lowest_salary FROM teachers;

SELECT COUNT(*) AS total_teachers FROM teachers;

select subject, sum(salary) from teachers group by(subject) having sum(salary)>50000;

SELECT subject, COUNT(*) AS teacher_count FROM teachers GROUP BY subject;

SELECT subject, AVG(experience) AS avg_experience FROM teachers GROUP BY subject;

















