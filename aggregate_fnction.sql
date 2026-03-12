DROP DATABASE IF EXISTS fun;
CREATE DATABASE fun;
USE fun;

CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    roll INT NOT NULL,
    class VARCHAR(10),
    cgpa DECIMAL(3,2),
    city VARCHAR(30),
    marks INT
);

INSERT INTO student (name, roll, class, cgpa, city, marks)
VALUES
('Rahim', 101, '10', 4.50, 'Dhaka', 450),
('Karim', 102, '10', 4.20, 'Dhaka', 420),
('Ayesha', 103, '9', 3.85, 'Rajshahi', 385),
('Nabila', 104, '9', 4.90, 'Khulna', 490),
('Touhid', 105, '10', 4.95, 'Khulna', 495);



/*
SELECT MAX(marks) from student;
SELECT min(marks) from student;
SELECT AVG(marks) from student;
SELECT COUNT(city) from student;

SELECT city,name,count(roll)
 FROM student
 group by city,name;
 
 SELECT city,avg(marks)
 FROM student
 group by city
 order by avg(marks) DESC;
 */
 
 SELECT city,count(roll) 
 FROM student
 GROUP BY city
 HAVING MAX(marks)>450;
 
 /*clause use korara order ase jeta mainaatin korte hoy
 */
 SELECT city
 FROM student
 WHERE class=10
 GROUP BY city
 HAVING MAX(marks)>420
 ORDER BY city DESC;
 
