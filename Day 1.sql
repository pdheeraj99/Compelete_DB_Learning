#  =========================> Day 4 <===================================

# Showing databases
show databases;

# Creating one new database
create database sql_learning;

# Using our newly created database ( simply redirecting to this new DB from old DB )
use sql_learning;

# To show the tables in current database
show tables;

# To complete remove the table
drop table student;

#creating the table with table_name and attributes with specific datatypes
create table student ( s_id int, s_name varchar(15), age int, gender char(1), marks float, dob date );

#Insert into the student table all the facts ( nothing but data ) in terms of values
insert into student values ( 1,"Dheeraj", 26,"M", 70, "2001-12-19");

# Retrieving data from table ( or retrieving facts and figures from table )
# select COMMAND, from CLAUSE
# Execution starts from right to left: 1. from table -> 2. select columns
select * from student;