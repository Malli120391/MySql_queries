use store;

select * from employees;

select * from employees where emp_no > 1020 AND salary is null;

select * from employees where last_name is null;

select emp_no, first_name, salary, department from employees where department is not null;

select emp_no, last_name, salary, ifnull(salary*12, 'NA') as annual_salary from employees;

select * from employees where gender = 'F' and department is null;

SELECT * FROM employees WHERE gender='F' AND department IS NULL;

#======================================================================================
#Order by Clause

select * from employees order by joining_date desc;

select * from employees order by last_name asc;

select emp_no, first_name, gender, salary from employees
where salary is not null order by gender, first_name asc;

select * from employees where emp_no between 1011 and 1020 order by emp_no desc;

select distinct first_name from employees order by first_name asc;

select emp_no, first_name, department, birth_date from employees
where department like '__' order by department asc, birth_date desc;









