# Get maximum total earnings for all employees as well as the total number of employees who have
# maximum total earnings.

SELECT CONCAT(CAST(B.total_salary AS CHAR)," ", CAST(B.emp_count AS CHAR)) AS 'result'
  FROM (SELECT A.total_salary,
			  (SELECT COUNT(employee_id) 
				 FROM employees 
				WHERE (months * salary) = A.total_salary) AS emp_count
		 FROM (SELECT MAX(months * salary) AS 'total_salary' 
				 FROM employees) A ) B;