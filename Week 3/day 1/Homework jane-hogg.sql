--MVP*
--Q1
--Find all the employees who work in the ‘Human Resources’ department.

SELECT *
FROM employees
WHERE department = 'Human Resources'

--Q2get the first_name, last_name, and country of the employees who work in the ‘Legal’ department.

SELECT *
FROM employees
WHERE department  = 'Legal'; 


--Q3Count the number of employees based in Portugal.

SELECT *
FROM employees
WHERE country = 'Portugal' 


--Q4 Count the number of employees based in either Portugal or Spain. Portugal was 29. Spain 6


SELECT 
count(*) 
FROM employees
WHERE country = 'Portugal';


SELECT 
count(*)
FROM employees e 
WHERE country = 'Spain';


--Q5 Count the number of pay_details records lacking a local_account_no.

SELECT *
FROM employees
WHERE pay_detail_id = NULL;


