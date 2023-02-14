# sql-challenge
Module 9 Challenge for Laura Jordan

## Description
In this exercise, I was tasked with acting as a new data engineer at Pewlett Hackard (a fictional company). The task was to do a research project about people whom the company employed during the 1980s and 1990s using six CSV files. I designed tables to hold the data from the CSV files, imported the CSV files into a SQL database and then answered questions about the data. 

This challenge had three components to it:
- Data Modeling
- Data Engineering
- Data Analysis

## Data Modeling
After reviewing the six CSV files, I sketched an Entity Relationship Diagram of the tables using QuickDBD.

INSERT IMAGE

## Data Engineering
Created a table schema for each of the six CSV files. I specified data gypes, primary keys, foreign keys, and other constraints then uploaded the information from each CSV into it's corresponding SQL table so I could analyze the data.

## Data Analysis
The data analysis section focused on using the information compiled and answering 8 questions.
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Support
I attended class, watched class recordings and reviewed my notes for the support needed for this challenge assignment.

## Submission Includes
#### Data Modeling Image:
* Data Modeling - QuickDBD.png
#### Data Engineering and Analysis Code:
* sql-challenge - Table Schemata - LJordan.sql
* sql-challenge - Queries - LJordan.sql
* Export of the results for each business question
   - Data Analysis - Question 1 Results.csv
   - Data Analysis - Question 2 Results.csv
   - Data Analysis - Question 3 Results.csv
   - Data Analysis - Question 4 Results.csv
   - Data Analysis - Question 5 Results.csv
   - Data Analysis - Question 6 Results.csv
   - Data Analysis - Question 7 Results.csv
   - Data Analysis - Question 8 Results.csv
#### Data Folder:
* departments.csv
* dept_emp.csv
* dept_manager.csv
* employees.csv
* salaries.csv
* titles.csv
