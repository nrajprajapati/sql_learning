/*Data Manipulation Language (DML)! 
Think of DML as the set of tools you use to actually work with the data inside your database tables. 
It's how you add, change, and retrieve information.*/

#create table

create database hr_pvt ;
use hr_pvt;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    HireDate DATE
);

#Insert Data
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, HireDate)
VALUES (1, 'Alice', 'Smith', 'alice.smith@example.com', '2023-08-15');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, HireDate)
VALUES
    (2, 'Bob', 'Johnson', 'bob.johnson@example.com', '2024-01-20'),
    (3, 'Charlie', 'Brown', 'charlie.brown@example.com', '2024-05-10');
    
INSERT INTO Employees
VALUES (4, 'Diana', 'Garcia', 'diana.garcia@example.com', '2024-09-01');

SELECT *
FROM Employees;

SELECT FirstName, LastName, Email
FROM Employees;

SELECT FirstName, LastName, HireDate
FROM Employees
WHERE HireDate > '2024-01-01';
# You can use various comparison operators (>, <, =, >=, <=, != or <>) 
# and logical operators (AND, OR, NOT) in your WHERE clause.

UPDATE Employees
SET Email = 'alice.new@example.com'
WHERE EmployeeID = 1;

UPDATE Employees
SET HireDate = '2024-01-15'
WHERE HireDate = '2024-01-20';

DELETE FROM Employees
WHERE EmployeeID = 3;

DELETE FROM Employees
WHERE HireDate < '2023-09-01';

DELETE FROM Employees;
