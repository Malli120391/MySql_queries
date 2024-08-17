
use star_db;

create table dim_employee(
 emp_id int,
 emp_name varchar(25)
)

create table dim_branch(
branch_id int,
branch_name varchar(25)
)

create table dim_product(
prod_id int,
prod_name varchar(25)
)

create table dim_customer(
cust_id int,
cust_name varchar(25)
)

create table fact_shop(
emp_id int,
branch_id int,
prod_id int,
cust_id int
)