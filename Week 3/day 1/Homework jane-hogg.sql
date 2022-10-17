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
pay_detail_id

--Broken this section into two - just called the pay details first.

SELECT *
FROM employees
local_account_id
WHERE pay_detail_id IS NOT NOT NULL;

--Moving on as not really managed to stich these two functions together. Data lloks like there are recods for all employees


--Q6Are there any pay_details records lacking both a local_account_no and iban number?

--





