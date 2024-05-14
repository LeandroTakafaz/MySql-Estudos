-- Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name.
-- If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.) secondary sort them by ascending ID.

select name from students
where marks > 75
order by right(name, 3), id asc;

-------------------------------------------------------------------

-- Expansão da Atividade --

-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

select name from Employee
order by name asc;

-------------------------------------------------------------------

-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month 
-- who have been employees for less than 10 months. Sort your result by ascending employee_id.

select name from employee
where salary >= 2000 and months < 10
order by employee_id asc;

-------------------------------------------------------------------

-- Samantha interviews many candidates from different colleges using coding challenges and contests. Write a query to print the contest_id,
-- hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, and total_unique_views
-- for each contest sorted by contest_id. Exclude the contest from the result if all four sums are 0.

SELECT 
    contest_id,
    hacker_id,
    name,
    SUM(total_submissions) AS total_submissions,
    SUM(total_accepted_submissions) AS total_accepted_submissions,
    SUM(total_views) AS total_views,
    SUM(total_unique_views) AS total_unique_views
FROM 
    contests
GROUP BY 
    contest_id, hacker_id, name
HAVING 
    SUM(total_submissions) != 0 
    OR SUM(total_accepted_submissions) != 0 
    OR SUM(total_views) != 0 
    OR SUM(total_unique_views) != 0
ORDER BY 
    contest_id;