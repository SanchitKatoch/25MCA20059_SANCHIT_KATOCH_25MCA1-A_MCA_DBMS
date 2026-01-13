CREATE DATABASE college_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    course VARCHAR(50),
    marks INT CHECK (marks >= 0)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO courses (course_id, course_name)
VALUES (1, 'BCA'),(2, 'MCA'),(3, 'BTech');

INSERT INTO students (student_id, student_name, course, marks)
VALUES
(101, 'Kartik', 'BCA', 78),
(102, 'Sanchit', 'MCA', 85),
(103, 'Naman', 'BTech', 72);

SELECT * FROM students;

SELECT student_name, marks
FROM students
WHERE marks > 75;

UPDATE students
SET marks = 88
WHERE student_id = 101;

DELETE FROM students WHERE student_id = 103;

ALTER TABLE students
ADD COLUMN email VARCHAR(100);

ALTER TABLE students
RENAME COLUMN course TO course_name;

CREATE ROLE readonly_user
LOGIN
PASSWORD '1111';

GRANT SELECT ON students TO readonly_user;
REVOKE SELECT ON students FROM readonly_user;



