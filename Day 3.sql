show databases;

create database sql_learning_1;

use sql_learning_1;

create table student ( s_id int primary key,
                       s_name varchar(15) not null,
                       age int check(age >= 18),
                       institute varchar(20) default "dheeraj_academy"
);

desc student;

insert into student values(1, "A", 22, "Tap");

# Duplicate entry '1' for key 'student.PRIMARY'
insert into student values(1, "A", 22, "Tap");

# Column 's_id' cannot be null
insert into student values(null, "A", 22, "Tap");

# Column 's_name' cannot be null
insert into student values(2, null, 22, "Tap");

insert into student values(2, "B", 22, null);

select * from student;

# Check constraint 'student_chk_1' is violated.
insert into student values(3, "C", 12, "Tap");

# ------------------------------

# Column count doesn't match value count at row 1 ( Why ?: 4 columns values you gave only 3 values ) -> Error
insert into student values(4, "D", 19);

# Before Inserting only we need to say, i know the values for these columns only -> Solution
# Now for the 4th column it will insert default value
insert into student(s_id, s_name, age) values(4, "D", 19);

# -----------------------------

select * from student;




