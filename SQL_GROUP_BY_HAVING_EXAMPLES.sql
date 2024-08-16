#GROUP BY Clause
#===============================================================================

use store;

select * from employees;

select gender, sum(salary) from employees  group by gender;

select avg(salary) as avg_salary from employees 
group by department 
order by avg_salary asc;

SELECT department, min(salary) as min_salary from employees
where department IS NOT NULL 
GROUP BY department;

select department, avg(salary) as avg_salary, 
max(salary) as max_salary from employees 
group by department;

select department, count(*) as total_employees from employees 
group by department 
order by total_employees desc;

#======================================================================================
#having clause

select * from employees;

select first_name, count(first_name) as duplicate_count from employees 
group by first_name
having count(*)>1;

select department, count(department) as total_employees from employees
group by department
having count(*)>5;

select department, avg(salary) as average_salary from employees
group by department
having avg(salary)>50000;

select department, count(*) as total_employees from employees
where salary >=30000
group by department
having count(*)>=3;

select department, max(salary) as max_salary from employees
group by department
having max(salary)>60000;

select department, max(salary) as highest_salary, min(salary) as lowest_salary
from employees
group by department
having max(salary)>=2*min(salary);

select department, count(*) as total_employees, sum(salary) as total_salary_expense
from employees
group by department
having count(*)>=5 and sum(salary)>100000;

select department, avg(salary) as average_salary from employees
group by department
having avg(salary) between 20000 and 50000;

select department, count(*) as total_employees, 
max(salary) - min(salary) as salary_difference from employees
group by department
having count(*)>4 and 
max(salary) - min(salary)>25000;

#=========================================================================================
#String function examples

select * from employees;

select * from employees where length(first_name)>=8;

SELECT emp_no, first_name,
CONCAT(first_name,'.',last_name,'@demo.com') AS email
FROM employees WHERE emp_no <=1010; 

select emp_no, upper(first_name), upper(last_name) from employees;

select * from employees;

select substr(birth_date,6,2) as birth_month from employees;

select emp_no, first_name, replace(joining_date, '2020', '2023') from employees;

select first_name, last_name, substr(last_name, -3) as son from employees;

SELECT first_name, last_name FROM employees WHERE substring(last_name, -3) = 'son';

select emp_no, reverse(department) from employees;

select * from employees;

select first_name, last_name, length(first_name)>length(last_name) from employees;

select * from employees where length(first_name)>length(last_name);

select substr(salary, 1,4) as 'new_salary' from employees;

select left(salary, 4) as new_salary from employees;








