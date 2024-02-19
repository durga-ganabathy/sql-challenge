--Drop TABLE departments
CREATE TABLE departments (
   dept_no varchar(10) not null,
   dept_name varchar(30) not null,
   Primary Key(dept_no)
 
);

--Drop TABLE titles
CREATE TABLE titles (
	title_id varchar(20) not null,
	title varchar(30) not null,
	Primary Key(title_id)
 
);

--Drop TABLE employees

CREATE TABLE employees (
	emp_no integer not null,
	emp_title_id varchar(20) not null ,
    birth_date Date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(10) not null,
	hire_date Date not null,
	Primary Key(emp_no),
	Foreign Key(emp_title_id) references titles (title_id)
 
);


--Drop TABLE dept_emp
CREATE TABLE dept_emp (
   emp_no integer not null,
   dept_no varchar(10) not null,
   Foreign Key(emp_no) references employees(emp_no),
   Foreign Key(dept_no) references departments(dept_no)
 );


--Drop TABLE dept_manager
CREATE TABLE dept_manager (
   dept_no varchar(10) not null,
   emp_no integer not null,
   Foreign Key(dept_no) references departments(dept_no),
   Foreign Key(emp_no) references employees(emp_no)
 
);


--Drop TABLE salaries
CREATE TABLE salaries (
	emp_no integer not null,
	salary integer not null,
	Foreign Key(emp_no) references employees(emp_no)
 
);











--Select * from salaries


