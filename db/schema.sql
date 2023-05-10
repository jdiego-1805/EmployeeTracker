DROP DATABASE IF EXISTS bakery_db;
CREATE DATABASE bakery_db;

USE bakery_db;

CREATE TABLE department
(
	id INT auto_increment PRIMARY KEY,
    name: VARCHAR(30)
);

INSERT INTO department (name)
	VALUES
    ("Production"),
    ("Sales"),
    ("Delivery");

CREATE TABLE role
(
	id INT auto_increment PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT    
);

INSERT INTO role (title, salary, department_id)
VALUES
    ('Baker', 2500.00, 1),
    ('Pastry Chef', 3000.00, 1),
    ('Cake Decorator', 2000.00, 1),
    ('Cashier', 1800.00, 2),
    ('Barista', 2000.00, 2),
    ('Delivery Driver', 2200.00, 3);


CREATE TABLE employee
(
	id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
    ('John', 'Doe', 1, NULL),
    ('Jane', 'Smith', 2, 1),
    ('Michael', 'Johnson', 3, 1),
    ('Emily', 'Williams', 4, 2),
    ('David', 'Brown', 5, 2),
    ('Sarah', 'Taylor', 6, 3);
