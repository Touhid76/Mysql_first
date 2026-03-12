DROP DATABASE IF EXISTS funny;
CREATE DATABASE funny;
USE funny;

CREATE TABLE studentt (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    roll INT NOT NULL,
    class VARCHAR(10),
    cgpa DECIMAL(3,2),
    city VARCHAR(30),
    marks INT
);

INSERT INTO studentt (name, roll, class, cgpa, city, marks)
VALUES
('Rahim', 101, '10', 4.50, 'Dhaka', 450),
('Karim', 102, '10', 4.20, 'Dhaka', 420),
('Ayesha', 103, '9', 3.85, 'Rajshahi', 385),
('Nabila', 104, '9', 4.90, 'Khulna', 490),
('Touhid', 105, '10', 4.95, 'Khulna', 495);

-- OPTION 1: Disable safe updates temporarily
/*
SET SQL_SAFE_UPDATES = 0;
UPDATE studentt
SET cgpa = 5
WHERE marks>=449;
SET SQL_SAFE_UPDATES = 1;
*/
-- Turn off safe updates

/*
UPDATE studentt
SET marks = marks + 50;
*/
SET SQL_SAFE_UPDATES = 0;
DELETE FROM studentt
WHERE marks<=400;
SELECT * FROM studentt;

