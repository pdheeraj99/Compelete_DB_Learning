#  =========================> Day 5 <===================================

drop table student;

create table student ( s_id int, s_name varchar(15), marks float, gender char(1), dob date );

desc student;

insert into student values (1, "Ramu", 60, "M", "2001-12-19");

insert into student values (2, "Ramya", 61, "F", "2003-12-19");

select * from student;

insert into student values (3, "Rakesh", 62, "M", "1997-12-19");

select * from student;

