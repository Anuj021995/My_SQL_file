create database anuj;

use anuj;
create table customer_info(
id int,first_name varchar(25),last_name varchar(25) 
);
## insert some rows inside customer_info table
insert into customer_info(id,first_name,last_name) values(1,"Krish","Naik");

insert into customer_info(id,first_name,last_name) values(2,"Krish1","Naik1");

insert into customer_info values(3,'KRish2','Naik2'),(4,'Krish3','Naik3');
insert into customer_info(id,first_name,last_name) values(5,"Krish","Naik1");

select * from customer_info where last_name="Naik1" or last_name="Naik";
select * from customer_info where last_name="Naik1" and first_name="Krish";
drop table customer_info;
create table customer_info(
id int auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key(id)
);

insert into customer_info(first_name,last_name,salary) values("Krish","Naik",20000);
insert into customer_info(first_name,last_name,salary) values("Anuj","kumar",22000), 
('Rajni','Chauhan',30000);
drop table customer_info;

create table customer_info(
id int auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key(id)
);
##update the null values
select * from customer_info where salary is NULL;
set sql_safe_updates = 0;
update customer_info
set salary =18000 
where id = 4;
UPDATE customer_info
SET salary =18000
WHERE id = 4;

## Constraint not NULL
alter table customer_info
modify column salary float not null;

insert into customer_info(first_name,last_name,salary) values("Krish","Naik",20000),
("Anuj","kumar",22000), 
('Rajni','Chauhan',30000),
('Deepak','Raj',1000);

create table employee(
	id int auto_increment,
	pancard int unique,
	first_name varchar (25),
	last_name varchar (25),
	salary int not null,
	primary key(id)

);
drop table employee;

insert into employee (pancard,first_name,last_name, salary) value 
(12313254,"Anuj","kumar",22000), 
(5461214,'Rajni','Chauhan',30000),
(5134560,'Deepak','Raj',1000);
insert into employee (pancard,first_name,last_name, salary) value 
(5134550,'raju','Raj',8000);

select * from employee;

create table person (
id int auto_increment,
first_name varchar (25),
last_name varchar (25),
age int not null,
primary key(id)
);
insert into person (first_name, last_name, age) value
("Anuj","kumar",28), 
('Rajni','Chauhan',25),
('Deepak','Raj',20);
describe person;
alter table person
drop primary key;

alter table person
add constraint pk_student primary key(id, last_name);

select * from person;


create table customers(
id int auto_increment,
first_name varchar (25),
country varchar (25),
capital varchar(25),
primary key (id)
);

insert into customers (first_name, country, captial) value 
("Anuj", 'India',"Bihar"),('tom', 'austtalia', 'Canberra'),
('Deepak', 'India','up'), ('Sunny', 'Maldives','Male');

select * from customers;



