/* List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates. */
/*
Looks like we could possibly trim down on duplicates. I included duplicates for this as the question didn't say to remove.
Manager 110303 appears to have worked and then left the company. Then came back, so if they came back, then a second record appears.  
*/
SELECT m.dept_no, d.dept_name, m.emp_no as managerEmployeeNum, e.last_name as managerLastName, e.first_name as managerFirstName,
t.from_date as managerStartDate, t.to_date as managerEndDate
FROM dept_manager m
LEFT JOIN employees e ON e.emp_no = m.emp_no 
LEFT JOIN departments d ON d.dept_no = m.dept_no
LEFT JOIN titles t on t.emp_no = m.emp_no;
