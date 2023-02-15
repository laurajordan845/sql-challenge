--Queries

--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries  ON employees.emp_no = salaries.emp_no
ORDER BY last_name ASC;
--Results saved and submitted as Data Analysis - Question 1 Results.csv

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date ASC;
--Results saved and submitted as Data Analysis - Question 2 Results.csv

--3. List the manager of each department along with their department number, department name, 
--   employee number, last name, and first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, 
	employees.last_name, employees.first_name
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
ORDER BY dept_manager.dept_no;
--Results saved and submitted as Data Analysis - Question 3 Results.csv

--4. List the department number for each employee along with that employee’s employee number, 
--   last name, first name, and department name.
SELECT departments.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
ORDER BY departments.dept_name ASC;
--Results saved and submitted as Data Analysis - Question 4 Results.csv

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose 
--   last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;
--Results saved and submitted as Data Analysis - Question 5 Results.csv
--Please note, I took this to mean anyone named Hercules B. If this was supposed to mean anyone name 
--Hercules OR who had a last name starting with B regardless of first name, the code would only 
--slightly change. Would update to "WHERE first_name = 'Hercules' OR last_name LIKE 'B%'"

--6. List each employee in the Sales department, including their employee number, last name, and 
--   first name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY emp_no ASC;
--Results saved and submitted as Data Analysis - Question 6 Results.csv

--7. List each employee in the Sales and Development departments, including their employee number,
--   last name, first name, and department name.
-- Sales = dept_no: d007 & Development = dept_no: d005
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY departments.dept_name, emp_no ASC;
--Results saved and submitted as Data Analysis - Question 7 Results.csv

--8. List the frequency counts, in descending order, of all the employee last names (that is, how 
--   many employees share each last name).
SELECT last_name, count(emp_no) AS "Frequency of  Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Frequency of  Last Name" DESC;
--Results saved and submitted as Data Analysis - Question 8 Results.csv