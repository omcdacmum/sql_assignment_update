-- Write a SQL statement to change the email column of the employees table with 'not available' for all employees
use hr;

set sql_safe_updates=0;

update employees
set email = 'not available';


-- Write a SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for all employees.

update employees 
set commission_pct = 0.15;

SELECT employee_id, email, commission_pct FROM employees;



UPDATE employees
SET email = 'not available',
    commission_pct = 0.10
WHERE department_id = 110;





UPDATE employees
SET email = 'not available'
WHERE department_id = 80
  AND commission_pct < 0.20;





UPDATE employees
SET email = 'not available'
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Accounting'
);







UPDATE employees
SET salary = 8000
WHERE employee_id = 105
  AND salary < 5000;







UPDATE employees
SET job_id = 'SH_CLERK'
WHERE employee_id = 118
  AND department_id = 30
  AND job_id NOT LIKE 'SH%';






UPDATE employees
SET salary = CASE
    WHEN department_id = 40 THEN salary * 1.25
    WHEN department_id = 90 THEN salary * 1.15
    WHEN department_id = 110 THEN salary * 1.10
    ELSE salary
END;






-- Increase min and max salary for PU_CLERK
UPDATE jobs
SET min_salary = min_salary + 2000,
    max_salary = max_salary + 2000
WHERE job_id = 'PU_CLERK';

-- Increase salary and commission_pct for PU_CLERK employees
UPDATE employees
SET salary = salary * 1.20,
    commission_pct = commission_pct + 0.10
WHERE job_id = 'PU_CLERK';


