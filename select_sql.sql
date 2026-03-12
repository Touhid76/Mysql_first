DROP DATABASE IF EXISTS student_db;
CREATE DATABASE student_db;
USE student_db;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    roll INT NOT NULL,
    class VARCHAR(10),
    cgpa DECIMAL(3,2),
    city VARCHAR(30),
    marks INT
);

INSERT INTO students (roll, class, cgpa, city, marks)
VALUES
(101, '10', 4.50, 'Dhaka', 450),
(102, '10', 4.20, 'Dhaka', 420),
(103, '9', 3.85, 'Rajshahi', 385),
(104, '9', 4.90, 'Khulna', 490);

SELECT roll, cgpa, city, marks FROM students WHERE marks>400 AND city="Dhaka";
SELECT roll, cgpa, city, marks FROM students WHERE marks>400 OR city="Dhaka";

SELECT roll, cgpa, city, marks FROM students WHERE marks BETWEEN 430 AND 500;
SELECT roll, cgpa, city, marks FROM students WHERE city IN ("Dhaka","Rajshahi");
SELECT roll, cgpa, city, marks FROM students WHERE city NOT IN ("Dhaka","Rajshahi");

/*limit clause*/
SELECT roll, cgpa, city, marks FROM students LIMIT 3;

/*ORDER CLAUSE*/

SELECT roll, cgpa, city, marks FROM students ORDER BY marks ASC;
SELECT roll, cgpa, city, marks FROM students ORDER BY marks DESC LIMIT 3;



