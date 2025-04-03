/* SQL constraints are rules applied to data columns in a table to ensure data accuracy and integrity. 
 They define restrictions on the type of data that can be stored in a column.
 Constraints can be defined when a table is created using the CREATE TABLE statement, or after the table has been created, using the ALTER TABLE statement. */
 
 # NOT NULL - Ensures that a column cannot have a NULL value.
 -- Example:
 use cloudyml_practice ;
 
 create table Employees (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL);
    
# UNIQUE -Ensures that all values in a column are unique.
-- Example:
CREATE TABLE Employees3 (
    EmployeeID INT NOT NULL UNIQUE,
    Email VARCHAR(100) UNIQUE
);


# PRIMARY KEY
-- A combination of NOT NULL and UNIQUE.
-- Uniquely identifies each row in a table.
-- A table can have only one primary key.
-- Example:

CREATE TABLE Employees4 (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);


#FOREIGN KEY - Establishes a link between tables.
# Ensures that the values in one table reference valid values in another table.
-- Example:

CREATE TABLE Customers(
    CustomerID INT primary key,
    Customer_name varchar(30)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


# CHECK
-- Ensures that all values in a column satisfy a specific condition.
-- Example:
CREATE TABLE Employees5 (
    EmployeeID INT PRIMARY KEY,
    Salary DECIMAL(10, 2) CHECK (Salary > 0));
    
## DEFAULT
-- Specifies a default value for a column when no value is provided.
-- Example:

CREATE TABLE Employees6 (
    EmployeeID INT PRIMARY KEY,
    City VARCHAR(50) DEFAULT 'New York'
);


/*# Column-Level vs. Table-Level Constraints
-- Column-Level Constraints: Applied to a single column.
-- Table-Level Constraints: Applied to the entire table and can involve multiple columns.
 -- Defining Constraints -- Using CREATE TABLE

CREATE TABLE table_name (
    column1 data type constraint,
    column2 data type constraint,
    column3 data type,
    [table_constraint]
);

Using ALTER TABLE

#Add a constraint:

ALTER TABLE table_name
ADD constraint_name constraint_definition;

#Modify a column to add a constraint:

ALTER TABLE table_name
MODIFY column_name datatype constraint_definition;

#Drop a constraint:
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;

-- Importance of SQL Constraints
-- Maintain data integrity and accuracy.
-- Prevent invalid data from being entered into the database.
-- Enforce business rules at the database level.
-- Improve data consistency.
-- Simplify data management. */
