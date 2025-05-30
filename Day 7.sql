create database sql_learning_2;

use sql_learning_2;

CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(15) NOT NULL,
    price INT NOT NULL,
    stock INT NOT NULL
);

INSERT INTO product (product_id, product_name, price, stock) VALUES
(100, 'Laptop Pro', 1299, 50),
(101, 'Smartphone X', 699, 100),
(102, 'Wireless', 99, 150),
(103, 'Tablet Air', 399, 75),
(104, 'Smartwatch', 199, 120),
(105, 'Gaming Console', 499, 30),
(106, 'Bluetooth', 59, 200),
(107, 'External', 149, 80),
(108, '4K Monitor', 299, 40);

select * from product;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    city VARCHAR(50),
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);


INSERT INTO customer (customer_id, first_name, last_name, email, phone, city, product_id) VALUES
(400, 'Emma', 'Brown', 'emma.brown@example.com', '555-0201', 'New York', 100),
(401, 'Liam', 'Davis', 'liam.davis@example.com', '555-0202', 'Los Angeles', 101),
(402, 'Olivia', 'Wilson', 'olivia.wilson@example.com', '555-0203', 'Chicago', 102),
(403, 'Noah', 'Taylor', 'noah.taylor@example.com', '555-0204', 'Houston', 103),
(404, 'Sophia', 'Martinez', 'sophia.martinez2@example.com', '555-0205', 'Phoenix', 104),
(405, 'James', 'Anderson', 'james.anderson@example.com', '555-0206', 'Philadelphia', 105),
(406, 'Ava', 'Thomas', 'ava.thomas@example.com', '555-0207', 'San Antonio', 106),
(407, 'William', 'Jackson', 'william.jackson@example.com', '555-0208', 'San Diego', 107),
(408, 'Isabella', 'White', 'isabella.white@example.com', '555-0209', 'Dallas', 108);

select * from customer;

CREATE TABLE department (
    d_id INT PRIMARY KEY,
    d_name VARCHAR(50) NOT NULL
);


INSERT INTO department (d_id, d_name) VALUES
(200, 'Sales'),
(201, 'IT'),
(202, 'Human Resources'),
(203, 'Marketing'),
(204, 'Finance'),
(205, 'Operations'),
(206, 'Research'),
(207, 'Customer Support'),
(208, 'Logistics');

select * from department;

CREATE TABLE employee (
    e_id INT PRIMARY KEY,
    e_fname VARCHAR(50) NOT NULL,
    e_lname VARCHAR(50) NOT NULL,
    e_email VARCHAR(100) UNIQUE NOT NULL,
    e_phoneno VARCHAR(15),
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    commission_pct DECIMAL(4, 2),
    d_id INT,
    FOREIGN KEY (d_id) REFERENCES department(d_id)
);

INSERT INTO employee (e_id, e_fname, e_lname, e_email, e_phoneno, hire_date, salary, commission_pct, d_id) VALUES
(300, 'John', 'Doe', 'john.doe@example.com', '555-0101', '2020-06-15', 60000.00, 0.10, 200),
(301, 'Jane', 'Smith', 'jane.smith@example.com', '555-0102', '2019-03-22', 75000.00, NULL, 201),
(302, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-0103', '2021-09-10', 50000.00, 0.05, 202),
(303, 'Bob', 'Williams', 'bob.williams@example.com', '555-0104', '2018-11-30', 80000.00, 0.15, 200),
(304, 'Emma', 'Brown', 'emma.brown2@example.com', '555-0105', '2022-01-15', 65000.00, NULL, 203),
(305, 'Liam', 'Davis', 'liam.davis2@example.com', '555-0106', '2020-07-20', 72000.00, 0.08, 204),
(306, 'Olivia', 'Wilson', 'olivia.wilson2@example.com', '555-0107', '2017-05-10', 58000.00, NULL, 205),
(307, 'Noah', 'Taylor', 'noah.taylor2@example.com', '555-0108', '2019-12-01', 90000.00, 0.12, 206),
(308, 'Sophia', 'Martinez', 'sophia.martinez@example.com', '555-0109', '2021-03-05', 62000.00, NULL, 207);

select * from employee;

# ----------------------------------TABLES CREATION COMPLETED------------------------------------------------

                                     # ARITHMETIC OPERATORS

# It will not affect original table. Select means only fetches thats it
select e_id, e_fname, e_lname, salary + 3000 from employee;

select e_id, e_fname, e_lname, salary - 1000 from employee;

select e_id, e_fname, e_lname, salary + salary * 0.1 from employee;

select e_id, e_fname, e_lname, salary - salary * 0.2 from employee where e_id=302;


            # COMPARISION OPERATORS ( =, >, <, >=, <=, < > ) ---------------

select e_id, e_fname, salary < 200 from employee;

select product_name from product where price=99;

select e_id, e_fname, salary from employee where salary < 70000;

select e_id, e_fname, commission_pct, salary from employee where commission_pct > 0.12;

select product_name from product where price >= 100; # Similarly for <=

select product_name from product where price <> 99; # <> or !=

                    # LOGICAL OPERATORS ( and, or, between and, not between and,
                    #        IN, not IN, IS NULL, IS NOT NULL, DISTINCT, LIKE )

# and - i know
# or - i know
# DISTINCT -> from the table if we want to fetch unique values
# BETWEEN / BETWEEN AND ( operator )-> range included
# NOT BETWEEN AND -> Excluding the range
# IN -> including SET OF VALUES
# NOT IN -> not including SET OF VALUES
# IS NULL -> checking for absence of the data
# NOT IS NULL -> checking for presence of the data
# LIKE ->

select * from product where price > 400 and stock >= 50;

# Same result from both..
select * from employee where d_id = 201 or d_id = 202;

select DISTINCT(d_id) from employee;

select DISTINCT d_id from employee;

# DISTINCT operator can also be used in multiple columns
# eg: DISTINCT(col1, col2)

select * from employee where salary between 10000 and 40000;


select * from employee where salary not between 10000 and 40000;


select * from department where d_id IN (201, 202, 203);

select * from employee where salary NOT IN (60000, 50000, 75000);

select * from employee where e_email is not NULL;

select * from employee where commission_pct is NULL;

# Pattern
# Like operator
# % - 0 or more characters eg: LIKE "a%"  first letter a and any no. of characters
# _ - 1 character eg: LIKE "_r%" second letter r and any no. of characters



















