-- SQL query to create the Employee table
use programminghero;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,  -- Unique identifier for each employee, set as the primary key
    FirstName VARCHAR(50),       -- Employee's first name, allowing up to 50 characters
    LastName VARCHAR(50),        -- Employee's last name, allowing up to 50 characters
    Age INT,                     -- Employee's age as an integer
    Department VARCHAR(50)       -- Department the employee belongs to, allowing up to 50 characters
);

-- Optional: Insert the data from the image into the newly created table

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Department) VALUES
(1, 'John', 'Doe', 28, 'Sales'),
(2, 'Jane', 'Smith', 32, 'Marketing'),
(3, 'Michael', 'Johnson', 35, 'Finance'),
(4, 'Sarah', 'Brown', 30, 'HR'),
(5, 'William', 'Davis', 25, 'Engineering'),
(6, 'Emily', 'Wilson', 28, 'Sales'),
(7, 'Robert', 'Lee', 33, 'Marketing'),
(8, 'Laura', 'Hall', 29, 'Finance'),
(9, 'Thomas', 'White', 31, 'HR'),
(10, 'Olivia', 'Clark', 27, 'Engineering');

