use sql_learning_1;

create table dept
(
    d_id int primary key,
    d_name varchar(15)
);

show tables;

create table emp (
    e_id int primary key,
    e_name varchar(15),
    e_age int,
    d_id int,
    foreign key(d_id) references dept(d_id)
);

desc emp;

insert into dept values(101, "Sales"), (102, "BD");

select * from dept;

# Added
insert into emp values(1, "A", 20, 102);

# Added
insert into emp values(2, "B", 20, 102);

# Cannot add or update a child row: a foreign key constraint fails (`sql_learning_1`.`emp`, CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `dept` (`d_id`))
# Why because we gave 103 but this 103 ID is not there in the dept table
# Child table ( child table ) is dependent on parent table ( department table )
insert into emp values(3, "B", 20, 103);

# COMPOSITE PRIMARY KEY ( Col1 + Col2 + .... + Col n )=============================> Lets see

# Basically Primary key is column level
# But if it is given table level with two or more columns it is COMPOSITE PRIMARY KEY
create table emp_details (
    e_id int,
    name varchar(16),
    A_no int,
    primary key(e_id, A_no)
);

insert into emp_details values(1, "A", 101);

insert into emp_details values(2, "B", 101);

select * from emp_details;

# See see here e_id 1 is already there but we are giving it. How it is taking ?
# Because e_id is not the only primary key. Its combined with A_no also. So e_id + A_no will be checked together for uniqueness and Not null
insert into emp_details values(1, "B", 102);

select * from emp_details;

# Duplicate entry '1-102' for key 'emp_details.PRIMARY'
insert into emp_details values(1, "B", 102);
