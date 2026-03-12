-- Create the employee table
CREATE TABLE employ (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

-- Insert data into employee table
INSERT INTO employ(id, name, manager_id) VALUES
(101, 'adam', 103),
(102, 'bob', 104),
(103, 'casey', NULL),
(104, 'donald', 103);

SELECT  name FROM employ
UNION ALL
SELECT name FROM employ;



-- Self join query to get employees and their managers
SELECT 
    b.name AS manager_name,
    a.name AS employee_name
FROM employ AS a
JOIN employ AS b ON a.manager_id = b.id;