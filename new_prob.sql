-- Using the same students table from previous example
CREATE TABLE stud (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO stud (rollno, name, marks) VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

-- Method 1: Simple WHERE clause (most efficient)
SELECT name, rollno
FROM stud
WHERE rollno % 2 = 0;


-- Method 3: Using subquery (as per the example instructions)
SELECT name, rollno
FROM stud
WHERE rollno IN (SELECT rollno FROM stud WHERE rollno % 2 = 0);