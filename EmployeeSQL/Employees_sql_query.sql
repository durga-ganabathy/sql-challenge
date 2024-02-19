--To view all the columns in salaries, employees, titles, departments, dept_emp, dept_manager table
Select * from salaries
Select * from employees
Select * from titles
Select * from departments
Select * from dept_emp
Select * from dept_manager

-- DATA ANALYSIS
--1. List the employee number, last name, first name, sex, and salary of each employee.
Select employees.emp_no, last_name, first_name, sex, salary
from employees
join salaries
on employees.emp_no = salaries.emp_no

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name, last_name, hire_date
from employees
where date_part('year',hire_date) = 1986;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select titles.title_id, title, departments.dept_no, dept_name, employees.emp_no, last_name, first_name
from titles
join employees
on titles.title_id = employees.emp_title_id
join dept_manager
on dept_manager.emp_no = employees.emp_no
join departments
on departments.dept_no = dept_manager.dept_no

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select departments.dept_no, employees.emp_no, last_name, first_name, dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no = dept_emp.dept_no

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
from employees
where first_name='Hercules' and last_name like 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name.
Select dept_name, employees.emp_no, last_name, first_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales'

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select employees.emp_no, last_name, first_name, dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales' or dept_name='Development'


--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select count(last_name) as count_lname, last_name
from employees
group by last_name 
order by count_lname desc






