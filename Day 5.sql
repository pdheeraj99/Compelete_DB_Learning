show tables;

# Entire table along with its data will be deleted ( * Dangerous )
drop table student;

show tables;

# Creating student table with 2 columns
create table student (
    id int,
    name varchar(10)
);

desc student;

# Adding one more column to existing table ( Command -> Alter )
alter table student add age int;

desc student;

# Renaming the column
alter table student rename column name to f_name;

desc student;

# Changing the datatype for column: ID from int to varchar
alter table student modify id varchar(10);

desc student;

# Changing the size of the datatype
alter table student modify id varchar(15);

desc student;

# Dropping a column / Removing a column from table
alter table student drop age;

desc student;

# first type of INSERTION
insert into student values (101, "A");

# second type of INSERTION
insert into student values (102, null);

# Third type of INSERTION ( specifying the column and inserting value into that )
insert into student(id) values (103);

select * from student;

# updating the f_name in student table where id is 102
update student set f_name="B" where id=102;

select * from student;

update student set f_name=null where id=102;

select * from student;

# Deleting student record ( one row according to condition )
delete from student where id=103;

select * from student;

# ------------------------------------------------

# Deletes all the data from the student table
truncate table student;

select * from student;

# Behaves exactly as ** truncate ** when delete command with no condition specified
delete from student;

# ------------------------------------------------




