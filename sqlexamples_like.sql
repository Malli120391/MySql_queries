select * from employees;

select * from employees where first_name like '%y';

select * from employees where birth_date like '%-04-%';

select emp_no, first_name, department from employees
where department not like '%ing%';

select * from employees;

select * from employees where last_name like 'w%' and emp_no > 1015;

select first_name, last_name from employees where first_name like 'j___%';

select * from employees where last_name like '%ill%' and salary between 30000 and 50000;

select emp_no, first_name, last_name from employees where first_name like 's%' and last_name like '%l%l%';

select * from employees where joining_date like '%2022-06-%' or joining_date like '%2021-06-%' 
and emp_no not between 1011 and 1020;
