show tables;

# *** Remember:  auto_increment can be only given to attribute which is primary key and also integer ***
create table employee (
    id int primary key auto_increment,
    name varchar(10)
);


show tables;

desc employee;

insert into employee(name) values('Dheeraj');

select * from employee;

insert into employee(name) values('Priya');

select * from employee;

# ==============================================>


















