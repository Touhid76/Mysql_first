-- First, let's create the table and insert data
CREATE TABLE students (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO students (rollno, name, marks) VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

-- Query to get names of all students who scored more than class average
SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);