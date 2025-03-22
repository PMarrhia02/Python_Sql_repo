USE UniversityDB;

Select * from students;
select * from courses;

SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.id;