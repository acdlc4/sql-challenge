-- List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees AS e
INNER JOIN salaries AS s 
	ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees AS e
	WHERE DATE_PART('year', hire_date) = 1986;

-- List the manager of each department along with their department number, department name, 
--   employee number, last name, and first name
SELECT d.dept_no, dept_name, e.emp_no, last_name, first_name
FROM employees AS e
INNER JOIN dept_manager AS m ON m.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = m.dept_no
ORDER BY d.dept_no, e.emp_no;

-- List the department number for each employee along with that employee’s employee number,
--   last name, first name, and department name (NOTE: employees can belong to more than 
--   one department)
SELECT d.dept_no, e.emp_no, last_name, first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
ORDER BY e.emp_no, d.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and 
--   whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees as e
WHERE first_name = 'Hercules'
	AND SUBSTRING(last_name,1,1) = 'B'
ORDER BY last_name;

-- List each employee in the Sales department, including their employee number, last name,
--   and first name (NOTE: employees can belong to more than one department)
SELECT e.emp_no, last_name, first_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
	WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- List each employee in the Sales and Development departments, including their employee 
--   number, last name, first name, and department name
SELECT e.emp_no, last_name, first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
	WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY e.emp_no, d.dept_name;

-- List the frequency counts, in descending order, of all the employee last names (that is,
--   how many employees share each last name)
SELECT last_name, COUNT(last_name) as count
FROM employees as e
GROUP BY last_name 
ORDER BY count DESC;
