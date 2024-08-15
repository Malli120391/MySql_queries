use store;

select * from employees;

select * from employees limit 10;

select * from employees limit 10 offset 10;

select emp_no, first_name, last_name, joining_date from employees order by joining_date desc limit 6;

select * from employees order by birth_date desc limit 2;

select * from employees where gender = 'M' order by birth_date limit 3;

select emp_no, first_name, salary from employees where salary is not null order by salary desc limit 3;

select * from employees where salary is not null and  department = 'IT' order by salary limit 3;

select * from employees where first_name like 'J%' order by first_name limit 3;

#=======================================================================================

#Aggregate functions

select count(*) as total_male from employees where gender = 'M'; 

select count(*) from employees where first_name like 'j%';

select sum(salary) from employees where emp_no between 1010 and 1020;

select sum(salary*12) as annual_salary from employees where department = 'HR';

select round(avg(salary),2) as avg_salary from employees;

select avg(salary) from employees where department = 'IT';

select * from employees;

select min(joining_date) as min_joining_date from employees;

select min(salary) as min_salary from employees where department = 'Finance';

select max(birth_date) as max_dob from employees;

select max(emp_no) as max_emp_no from employees;
















