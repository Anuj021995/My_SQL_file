CREATE	database iNeuron;

use iNeuron;

create table employ(emp_id INT ,
first_name varchar(50),
last_name varchar(50),
DOB date,
hire_date date,
position varchar(50),
salary float
);
ALTER TABLE employ MODIFY id INT AUTO_INCREMENT;

select * from employ;
INSERT INTO employ value (01,'Anuj','Kumar','1995-08-02','2020-08-23', 'DAta engineer',20000.0 );
INSERT INTO employ value (02,'Raju','Kumar','1995-08-02','2020-08-23', 'DAta engineer',22000.0);
INSERT INTO employ value  (03,'monu','Kumar','1995-08-02','2020-08-23', 'DAta engineer',300000);
INSERT INTO employ value (03,'ram','Kumar','1995-08-02','2020-08-23', 'DAta engineer',210000);
select * from employ;
select first_name,last_name,salary from employ;
#Select a employee who have a sal more then 20000
select * from employ where salary> 20000;
#first name in the asc order
select * from employ order by first_name asc;

SET SQL_SAFE_UPDATES = 0;
update employ set salary = 35000.0 where first_name ='Anuj';
select * from employ;

set sql_safe_updates = 0;
update employ set last_name = 'singh' where first_name ='Anuj';


SET SQL_SAFE_UPDATES = 0;
update employ set DOB = "1996-05-23" where first_name = 'Raju';

insert into employ  (first_name, last_name, salary)
value ('Rajni', 'Chauhan',43000);
set sql_safe_updates = 0;
update employ set emp_id = 5 where first_name = 'Rajni';
SET SQL_SAFE_UPDATES =0;
update employ set emp_id = 4 where first_name = 'ram';




select * from employ;











