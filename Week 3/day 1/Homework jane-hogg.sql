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

SELECT *
FROM employees
ORDER BY pay_detail_id DESC NULLS LAST,
local_account_id DESC NULLS  LAST;

--Q7Get a table with employees first_name and last_name ordered alphabetically by last_name (put any NULLs last).



SELECT ID,
    first_name,
    last_name 
    FROM employees;

--Split this up INTO FIRST part OF the question.
--



SELECT ID,
    first_name,
    last_name 
    FROM employees
    ORDER BY last_name ASC
  

SELECT ID,
  first_name,
  last_name
FROM employees 
WHERE first_name IS NOT NULL AND last_name IS NOT NULL
ORDER BY last_name ASC;
  
--not sure got the exact correct answer to this as I think the Nul have been ommitted.



--Q8Get a table of employees first_name, last_name and country, 
--ordered alphabetically first by country and then by last_name (put any NULLs last).

SELECT ID,
  first_name,
  last_name,
  country 
FROM employees 
WHERE first_name IS NOT NULL AND last_name IS NOT NULL
ORDER BY last_name  ASC;



SELECT ID,
  first_name,
  last_name,
  country 
FROM employees 
WHERE first_name IS NOT NULL AND last_name IS NOT NULL
ORDER BY country  ASC;


--Q9 Find the details of the top ten highest paid employees in the corporation.

SELECT *
FROM employees
ORDER BY salary ASC 
LIMIT 10

--Decided TO find the lowest paid FIRST 


SELECT *
FROM employees
ORDER BY salary DESC 
LIMIT 50

--returned the Null FIRST. Not sure why?? 


--Q10 Find the first_name, last_name and salary of the lowest paid employee in Hungary.


SELECT id 
first_name,
last_name,
country ountry = 'Hungary'
FROM employees;


SELECT *
FROM employees
WHERE country = 'Hungary';

  ---NOT sure there IS ONLY one person IN Hungary
    


--Q11 How many employees have a first_name beginning with ‘F’?


SELECT *
FROM employees 
WHERE first_name = 'Alfy' 

--tried this first to test the bits 

SELECT *
FROM employees 
WHERE first_name = 'F%' 



SELECT 
COUNT(id) AS num_employees_first_name_F
FROM employees
WHERE first_name ILIKE 'F%';



--q15 Return a table containing each employees first_name, last_name, full-time equivalent hours (fte_hours),
-- salary, 
--and a new column effective_yearly_salary which should contain fte_hours multiplied by salary.

--filter the table to only show employees with an effective yearly salary of £35k


--good example of order of operations

SELECT 
first_name,
last_name ,
fte_hours ,
salary ,
fte_hours * salary AS effective_yearly_salary
FROM employees
WHERE fte_hours * salary > 35000;



--Q16 The corporation wants to make name badges for a forthcoming conference. 
--Return a column badge_label showing employees’ first_name and last_name joined together with their department in the following style:
-- ‘Bob Smith - Legal’. Restrict output to only those employees with stored first_name, last_name and department.


SELECT 
    first_name,
    last_name ,
    department 
FROM employees
WHERE first_name IS NOT NULL AND last_name IS NOT NULL 
AND department IS NOT NULL;

--this is the first section of the question - but now need to join it togethetr.


SELECT 
    first_name,
    last_name ,
    department,
    concat(first_name, '', last_name, '-', department)AS badge_label 
FROM employees
WHERE first_name IS NOT NULL AND
last_name IS NOT NULL 
AND department IS NOT NULL;


--so this then gives the table with name and deparment
--concatiatiaon means TO link together IN a string


--q17 - pulling all together to then put the date in the labe.


SELECT
  first_name,
  last_name,
  department,
  start_date,
  CONCAT(
    first_name, ' ', last_name, ' - ', department, 
    ' (joined ', EXTRACT(YEAR FROM start_date), ')'
  ) AS badge_label
FROM employees
WHERE 
  first_name IS NOT NULL AND 
  last_name IS NOT NULL AND 
  department IS NOT NULL AND
  start_date IS NOT NULL


  SELECT
  first_name,
  last_name,
  department,
  start_date,
  CONCAT(
    first_name, ' ', last_name, ' - ', department, '_Happy Hippo',
    ' (joined ', EXTRACT(YEAR FROM start_date), ')'
  ) AS badge_label
FROM employees
WHERE 
  first_name IS NOT NULL AND 
  last_name IS NOT NULL AND 
  department IS NOT NULL AND
  start_date IS NOT NULL

--where is the filtering conditions

SELECT 

FROM employees e 
