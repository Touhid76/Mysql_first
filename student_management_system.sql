CREATE DATABASE IF NOT EXISTS sms;
USE sms;

-- 1️⃣ Students table (keeping your name 'snts')
CREATE TABLE IF NOT EXISTS snts (
    student_id INT NOT NULL,
    name VARCHAR(50),
    roll INT NOT NULL,
    class VARCHAR(50),
    city VARCHAR(50),
    PRIMARY KEY (student_id)
) ENGINE=InnoDB;

-- Clear existing data
DELETE FROM snts;

INSERT INTO snts(student_id, name, roll, class, city) VALUES
(202414094, 'Rahim', 101, '10', 'Dhaka'),
(202414095, 'Karim', 102, '10', 'Dhaka'),
(202414096, 'Tahim', 103, '10', 'Rajshahi');

SELECT * FROM snts;

-- 2️⃣ Courses table
CREATE TABLE IF NOT EXISTS courses (
    course_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    credit INT,
    PRIMARY KEY (course_id)
) ENGINE=InnoDB;

DELETE FROM courses;

INSERT INTO courses(name, credit) VALUES 
('System Design', 3);

SELECT * FROM courses;

-- 3️⃣ Enrollments table
CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id INT NOT NULL AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (enrollment_id),
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES snts(student_id),
    CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id)
) ENGINE=InnoDB;

DELETE FROM enrollments;

INSERT INTO enrollments (student_id, course_id) VALUES
(202414094, 1),
(202414095, 1),
(202414096, 1);

SELECT * FROM enrollments;

-- 4️⃣ Marks table
CREATE TABLE IF NOT EXISTS marks (
    mark_id INT NOT NULL AUTO_INCREMENT,
    enrollment_id INT NOT NULL,
    marks_obtained INT,
    PRIMARY KEY (mark_id),
    CONSTRAINT fk_enrollment FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id)
) ENGINE=InnoDB;

DELETE FROM marks;

-- Now insert marks with enrollment_id 1, 2, 3
INSERT INTO marks (enrollment_id, marks_obtained) VALUES
(1, 85),   
(2, 90),   
(3, 78);   

SELECT * FROM marks;

SELECT s.name,
SUM(m.marks_obtained*c.credit)/SUM(c.credit) as GPA
FROM snts as s  
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN marks m ON e.enrollment_id = m.enrollment_id
GROUP BY s.student_id;

SELECT s.name, SUM(m.marks_obtained) AS total_marks,
       RANK() OVER (ORDER BY SUM(m.marks_obtained) DESC) AS ranks
FROM snts s
JOIN enrollments e ON s.student_id = e.student_id
JOIN marks m ON e.enrollment_id = m.enrollment_id
GROUP BY s.student_id;

/*ALTER TABLE enrollments ADD COLUMN semester VARCHAR(10);
*/
