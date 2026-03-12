CREATE DATABASE touhid;
USE touhid;
CREATE TABLE stdents(
id INT NOT NULL,
name VARCHAR(50),
dept VARCHAR(50)
);
INSERT INTO stdents(id,name,dept) VALUES(1,'Rahim','CSE'),(2,'Karim','EEE'),(3,'Salma','CSE'),(4,'Tania','BBA');

SELECT name 
from stdents
WHERE dept='CSE';