DROP DATABASE IF EXISTS colllege;
CREATE DATABASE colllege;
USE colllege;

DROP TABLE IF EXISTS student;
CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

INSERT INTO student (name, age) VALUES ('touhid', 23);
INSERT INTO student (name, age) VALUES ('emon', 28);


/*multiple value add*/
INSERT INTO student (name, age) VALUES ('tafsir', 6),("Ortho",17),("humaiyra",10);
SELECT * FROM student;
SHOW DATABASES;
SHOW tables;