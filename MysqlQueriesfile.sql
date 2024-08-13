create database store;

use store;

create table orderDemo (
 id int primary key,
 product_Name varchar(50) not null,
 order_date date,
 price decimal(10,2) not null,
 quantity int
);

select * from orderDemo;

select * from orderDetails;

create table orderDetails as select * from orderDemo;

drop table orderDemo;

insert into orderDetails values(1, 'Pen', '2023-01-01', 9.05, 3);

INSERT INTO orderDetails VALUES
(2,'Book','2023-01-01',520,2),
(3,'Ink','2023-01-12',50.55,1),
(4,'Map','2023-01-19',25,5),
(5,'Bottle','2023-01-30',600,1),
(6,'Marker','2023-02-05',80,4);

insert into orderDetails(id, product_name, price) values(7, 'Pen', 60.90),
							    (8, 'Tape', 10);

select * from orderDetails;

CREATE TABLE employee(
id int PRIMARY KEY,
name varchar(50) NOT NULL,
salary int,
department varchar(50),
dob date );

INSERT INTO employee VALUES
(101,'Jack',2000,'HR','1997-05-19'),
(102, 'Jack', NULL,'HR',NULL),
(103,'Mack',6000,'Developer','1997-03-10'),
(104,'Peter',4000,'Tester','1998-07-16'),
(105,'Tom',3000,'HR','1998-11-03'),
(106, 'Leo',2500,'Developer','1997-10-10'),
(107,'Roger',5300,'Accounts','1997-06-17'),
(108,'Mike',2000,NULL,'1998-03-09'),
(109,'Paul',4800,'Developer','1998-12-28'),
(110,'Hannah',2000,'Accounts','1999-09-26');

select * from employee;

select * from employee;

select distinct salary from employee;

select name, dob from employee;

select id, name, salary*12 as annual_salary from employee;

select
  distinct salary,
  department
from
  employee;

select id, concat(name, '(',salary,')') as emp_detail from employee;

select * from employee_one;

alter table employee rename employee_one;

CREATE TABLE employees
(
emp_no INT NOT NULL,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
salary INT,
birth_date DATE NOT NULL,
gender ENUM ('M','F') NOT NULL,
joining_date DATE NOT NULL,
department VARCHAR(20),
PRIMARY KEY (emp_no)
);
INSERT INTO employees (`emp_no`, `first_name`, `Last_name`, `salary`, `birth_date`, `gender`, `joining_date`,
`department`)
VALUES (1001, 'James', 'Bond', 45300, '1998-01-19', 'M', '2020-11-29', 'Marketing'),
(1002, 'Robert', 'Lee', 69410, '1998-09-02', 'M', '2019-12-26', 'IT'),
(1003, 'Mary', 'Wood', 39518, '1997-11-07', 'F', '2019-09-12', 'Business Development'),
(1004, 'John', 'Cole', 36264, '1999-02-01', 'M', '2021-04-14', 'HR'),
(1005, 'Jennifer', 'Gill', 48941, '1996-06-05', 'F', '2019-06-28', 'Marketing'),
(1006, 'Michael', 'Watts', 23800, '1999-04-16', 'M', '2022-06-09', 'HR'),
(1007, 'David', 'Mills', 39400, '1998-04-26', 'M', '2021-10-17', 'IT'),
(1008, 'William', 'Hill', 26392, '1999-10-21', 'M', '2019-09-30', 'Business Development'),
(1009, 'Linda', 'Potter', 55231, '1998-01-24', 'F', '2021-08-07', 'Finance'),
(1010, 'Richard', 'Martin', 25600, '1996-08-07', 'M', '2021-03-23', 'IT'),
(1011, 'Susan', 'Hall', 54152, '1999-12-27', 'F', '2020-08-07', 'Finance'),
(1012, 'Joseph', 'Turner', 60556, '1997-05-13', 'M', '2019-09-02', 'Marketing'),
(1013, 'Mary', 'Gill', 58246, '1999-01-21', 'F', '2021-04-30', 'Business Development'),
(1014, 'Thomas', 'Ryan', 23676, '1996-10-12', 'M', '2022-03-02', 'IT'),
(1015, 'Charles', 'Williams', 57226, '2000-01-29', 'M', '2019-11-05', NULL),
(1016, 'Jessica', 'Clark', NULL, '2000-01-25', 'F', '2020-01-24', 'IT'),
(1017, 'Nancy', 'Parker', 66900, '1996-10-24', 'F', '2022-01-09', 'Finance'),
(1018, 'Betty', 'Barker', 35288, '1998-11-13', 'F', '2019-12-26', 'HR'),
(1019, 'Christopher', 'Gibson', 59341, '1998-04-23', 'M', '2019-05-02', 'Marketing'),
(1020, 'Daniel', 'Elliott', 44012, '1999-01-21', 'M', '2023-01-08', 'IT'),
(1021, 'David', 'Mills', NULL, '1998-01-24', 'M', '2019-12-26', 'IT'),
(1022, 'Sarah', 'Harrison', 44692, '1996-03-20', 'F', '2020-05-03', 'Finance'),
(1023, 'Matthew', 'Hill', 41365, '1998-05-16', 'M', '2019-05-23', 'IT'),
(1024, 'Anthony', 'Miller', 56794, '1996-06-30', 'M', '2019-02-28', 'Business Development'),
(1025, 'Mark', 'Wood', 65120, '1998-10-29', 'M', '2020-07-30', 'Business Development'),
(1026, 'Elizabeth', 'Walker', 47030, '1998-08-11', 'F', '2021-06-18', NULL),
(1027, 'Barbara', 'Anderson', NULL, '1999-12-27', 'F', '2021-03-14', 'HR'),
(1028, 'Jessica', 'Clark', 63836, '1998-01-24', 'F', '2021-05-23', 'IT'),
(1029, 'Nancy', 'Cole', 63669, '2000-01-26', 'F', '2019-12-26', 'Finance'),
(1030, 'Joe', 'Brooks', 44000, '1999-08-05', 'M', '2021-03-09', 'Business Development');

select * from employees;

select * from employees where joining_date > '2022-03-20';

select emp_no, first_name, last_name, department from employees where department = 'Finance';

select emp_no, salary, department from employees where salary<35000;

select * from employees where birth_date>='1998-01-24';

select emp_no, first_name, department from employees where department not in ('IT');
select emp_no, first_name, department from employees where department !='IT';

select * from employees where emp_no = '1010' or emp_no <= '1010';

select distinct first_name from employees where gender = 'M';

select * from employees;

select emp_no, first_name, salary, salary+10000 as final_salary from employees where salary<25000;

select emp_no, concat(first_name,' ',last_name) as full_name from employees where emp_no > 1015;
#====================================================================================

select * from employees where department = 'HR' or department = 'Marketing';

select emp_no, first_name, salary from employees where emp_no > 1010 and salary > 40000;

select * from employees where gender = 'F' and not 'IT'; 

select emp_no, department, salary, joining_date from employees where joining_date > '2020-04-01'
or 
salary<33000;

select * from employees where gender = 'M' and
  (department = 'Business Development' or department = 'Marketing' or department = 'Finance');
  
  select emp_no, first_name, birth_date 
  from employees
  where emp_no < 1020 and birth_date <'1999-03-09';
  
  select * from employees;
  
  select * from employees where (first_name = 'David' or first_name = 'Mary') and not last_name = 'Gill';

#==========================================================================================================

select * from employees where joining_date between '2019-03-01' and '2021-04-01';

select first_name, last_name, salary from employees
where last_name in('Gill','Hill', 'Mills', 'Hall');

select * from employees where salary not between 40000 and 50000;

select emp_no, first_name, salary, department as other_department from employees 
where department not in('Marketing', 'HR', 'Finance');

select * from employees where emp_no > 1020 and first_name in('David', 'Mark', 'Joe');

select * from employees where gender = 'F' and birth_date between '1997-07-09' and '1998-07-09';









