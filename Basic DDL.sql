#Create Data Base
create database cloudyml_practice;
create database manipal_univercity_practice;

use cloudyml_practice;

/* Data Definition Language (DDL)
DDL is a subset of SQL that focuses on defining and managing the structure of a database and its objects. DDL commands are used to create, modify, or delete database structures, but not the data itself.

Common DDL Commands
CREATE: Creates a new database object, such as a table, view, or index.

ALTER: Modifies an existing database object.

DROP: Deletes a database object.

TRUNCATE: Removes all data from a table, but not the table's structure */

#Create Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2)
);

#Alter Table

#Add new Col
ALTER TABLE Employees
    ADD Email VARCHAR(100);

#Modify a column's data type
ALTER TABLE Employees
    MODIFY Salary DECIMAL(12, 2);

#Drop a column
ALTER TABLE Employees
    DROP COLUMN Email;

---
CREATE TABLE Employees2 (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2)
);


# Drop table
DROP TABLE Employees;

# TRUNCATE TABLE
TRUNCATE TABLE Employees;


