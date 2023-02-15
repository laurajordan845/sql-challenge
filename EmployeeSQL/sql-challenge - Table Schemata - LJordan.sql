--Table schemata

--Create titles table
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR
);
--Load titles csv

--Create employees table
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR,
    last_name VARCHAR,
	sex VARCHAR(1),
    hire_date DATE
);
--Load employees csv

--Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR
);
--Load departments csv

--Create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL REFERENCES departments(dept_no),
	emp_no INT NOT NULL
);
--Load dept_manager csv

--Create dept_emp table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL REFERENCES employees(emp_no),
	dept_no VARCHAR(4) NOT NULL REFERENCES departments(dept_no)
);
--Load dept_emp csv

--Create salaries table
CREATE TABLE salaries (
	emp_no INT NOT NULL REFERENCES employees(emp_no),
	salary int
);
--Load salaries csv