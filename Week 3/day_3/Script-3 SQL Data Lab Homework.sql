

--SQL Lab and Homework
--Q1 How many employee records are lacking both a grade and salary?

SELECT
*
    FROM employees 
    WHERE grade IS NULL AND salary IS NULL;


--Q2 Produce a table with the two following fields (columns):
--the department
--the employees full name (first and last name)
--Order your resulting table alphabetically by department, and then by last name



SELECT 
    department,
    first_name,
    last_name,
    concat(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY department, last_name;



--Q3 Find the details of the top ten highest paid employees who have a last_name beginning with ‘A’.
--find last-name with A


SELECT *
FROM employees
WHERE last_name ~ '^A'
ORDER BY salary DESC NULLS LAST 
LIMIT 10;


--Q4Obtain a count by department of the employees who started work with the corporation in 2003.
--start with employees start jan 2003
--GROUP BY department


SELECT 
    Count(department)
    FROM employees 
    WHERE start_date BETWEEN  '2003-01-01' AND '2003-12-31';

---Q5 Obtain a table showing department,
-- fte_hours and the number of employees in each department who work each fte_hours pattern.
-- Order the table alphabetically by department,
-- and then in ascending order of fte_hours.



SELECT 
    department,
    count(id),
    fte_hours 
FROM employees
GROUP BY department, fte_hours 
ORDER BY department;

  
--Q6Provide a breakdown of the numbers of employees enrolled, 
--not enrolled, 
--and with unknown enrollment status in the corporation pension scheme.

SELECT 
count(pension_enrol),
       pension_enrol
FROM employees
GROUP BY pension_enrol;

    
--Q7Obtain the details for the employee with the highest salary in the ‘Accounting’ department
 who is not enrolled in the pension scheme?

 SELECT *
FROM employees
WHERE department = 'Accounting' AND pension_enrol IS FALSE 
ORDER BY salary DESC 
LIMIT 10;
 
--Q8 Get a table of country,
 --number of employees in that country,
 --and the average salary of employees in that country- for any countries in which more than 30 employees are based.
 -- Order the table by average salary descending.




SELECT *
FROM employees
WHERE country = 'Japan' AND salary > (SELECT AVG(salary) FROM employees);


--Q9 11. Return a table containing each employees first_name, last_name, full-time equivalent hours
-- (fte_hours), salary, 


--and a new column effective_yearly_salary which should contain fte_hours multiplied by salary.
-- Return only rows where effective_yearly_salary is more than 30000.



SELECT 
    first_name,
    last_name,
    fte_hours,
    salary,
    fte_hours * salary AS effective_yearly_salary
FROM employees;
    


--Q10   Find the details of all employees in either Data Team 1 or Data Team 2

SELECT
    "name" 
    charge_cost 
FROM teams
WHERE charge_cost = '40';

--Q11The expected_profit of an employee is defined as (48 * 35 * charge_cost - salary)
--* fte_hours, where charge_cost depends upon the team to which the employee belongs. 
--Get a table showing expected_profit for each employee.


SELECT *

FROM teams 


SELECT *
FROM employees as e a Right Join as team 
ON e.employees_id = d.id






