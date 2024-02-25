/* List employees who were hired in 1986. */

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year',hire_date) = 1986;
