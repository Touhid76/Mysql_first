CREATE DATABASE IF NOT EXISTS col;
USE  col;
DROP TABLE employee;
CREATE TABLE employee(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
salary INT NOT NULL
);
INSERT INTO employee(id,name,salary)VALUES(1,"TOUHID",20000),(2,"EMON",250000),(3,"TAFSIR",30000);

SELECT *FROM employee;
/*unique value deyar por change kora jay na*/
create table temp1(
id INT UNIQUE
);

INSERT INTO temp1 values(102);
INSERT INTO temp1 values(103);

select * from temp1;


create table employee(
id INT,
salary INT default 250000
);
insert into employee(id) values(101);

select * from employee;