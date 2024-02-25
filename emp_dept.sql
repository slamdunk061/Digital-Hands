/* List the department of each employee with the following information: employee number, last name, first name, and department name. */
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e 
JOIN dept_manager m on m.emp_no = e.emp_no
JOIN departments d ON d.dept_no = m.dept_no;
