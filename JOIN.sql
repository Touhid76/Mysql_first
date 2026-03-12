
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);


CREATE TABLE course (
    student_id INT,
    course VARCHAR(50)
);

-- Insert data into student table
INSERT INTO student (student_id, name) VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey');

-- Insert data into course table
INSERT INTO course (student_id, course) VALUES
(102, 'english'),
(103, 'science');

-- Inner join query (as shown in the image)
SELECT *
FROM student AS s
INNER JOIN course AS c
ON s.student_id = c.student_id;


SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id;

SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id;



SELECT * FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id
UNION
SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id;



