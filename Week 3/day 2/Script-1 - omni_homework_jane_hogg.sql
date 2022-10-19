
--Q1Find the first name, last name and team name of employees who are members of teams.
--inner join of teams and employees

SELECT * FROM employees;
SELECT * FROM teams;

-- this allows me to see what the two tables look like and what the name of the teams are
--allocat the alias to each of the tables 


SELECT 
    e.*,
    t.*
FROM employees AS e
INNER JOIN teams AS t
ON t.id = e.team_id; 
    

--Q2Find the first name, last name and team name of employees who are members of teams and are enrolled in the pension scheme.

SELECT 
    e.*,
    t.*
FROM employees AS e
INNER JOIN teams AS t
ON t.id = e.team_id
WHERE e.pension_enrol = TRUE

--yes this works
--rember that the call for the pension enrollment must relate to what the alias is - and in this case it is e.


--Q3 (c)   Find the first name, last name and team name of employees who are members of teams, where their team has a charge cost greater than 80.
--first name and last name from the employees table and then the team TABLE 


SELECT 
    e.*,
    t.*
FROM employees AS e
INNER JOIN teams AS t
ON e.team_id = t.id 
WHERE CAST (t.charge_cost AS INT) > 80

--Q2 Get a table of all employees details, together with their local_account_no and local_sort_code, if they have them.
employees, LOCAL account AND sort code


SELECT * FROM  employees;
SELECT * FROM pay_details;


SELECT 
    e.*,
    pd*,
FROM  employees AS e;
RIGHT JOIN pay_details AS pd 



FROM pay_details AS pd;
ON e.id = pd.id


FROM pay_details pd 

ON


WHERE 




--Q4 Create a table with the team id, team name and the count of the number of employees in each team.

--team id, team NAMESPACE number
--teams table and employees


SELECT 
  t.id,  
  t.name,
  COUNT(e.id)
FROM employees AS e
INNER JOIN teams AS t
ON e.team_id = t.id
GROUP BY t.id

Q5


SELECT  
  t.name,
  COUNT(e.id) * CAST(t.charge_cost AS INT) AS total_day_charge
FROM employees AS e
INNER JOIN teams AS t
ON e.team_id = t.id
GROUP BY t.id
HAVING COUNT(e.id) * CAST(t.charge_cost AS INT) > 5000


SELECT * FROM employees_committees;


--Q5 - DISTINCT employees who ARE ON committees.id 
SELECT count(DISTINCT (employee_id))
FROM employees_committees


--Q6 employees who are not on a committee.
--show instances when not on a committee. And the count how man y peole there are in the committess.
--filter for someof the data that is not required == anti join


SELECT
count(e.id )
FROM  employees AS e
LEFT JOIN employees_committees AS ec
ON e.id = ec.employee_id 
WHERE ec.committee_id IS NULL 


-- from the last question we were aware of the 22 on the committee so could have subtracted from the 1000 emplyees that we have.





