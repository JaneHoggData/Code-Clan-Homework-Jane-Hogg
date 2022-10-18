
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
ON t.id = e.team_id
WHERE e.charge_cost  =





