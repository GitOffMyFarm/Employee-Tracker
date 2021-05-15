DROP DATABASE IF EXISTS employeeDirectory_db;

CREATE database employeeDirectory_db;

USE employeeDirectory_db;

CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    PRIMARY KEY (id)
);
CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL (10, 2) NOT NULL DEFAULT 0,
    dept_id INT NOT NULL REFERENCES departments(id),
    PRIMARY KEY (id)
);
CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT NOT NULL REFERENCES roles(id),
    manager_id INT NULL REFERENCES employees(id),
    PRIMARY KEY (id)
);
INSERT INTO departments (name)
VALUES ("Client Services"), ("Sales"), ("Tech");
INSERT INTO roles (title, salary, dept_id)
VALUES 
("Salesperson", 80000, 2), 
("Director of Finance", 100000, 2), 
("Helpdesk Representative", 35000, 3),
("Director of Client Services", 85000, 1), 
("Client Services Representative", 27500, 1), 
("Director of Sales", 150000, 2);
INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES 
("John", "Richardson", 8, 0),
("Karen", "Johnson", 5, 0),
("Molly", "Wong", 3, 0),
("Terri", "Shumpert", 4, 2),
("Ryan", "Thompson", 2, 3),
("Sally", "Freeman", 1, 3),
("Lilly", "Thomas", 1, 2);