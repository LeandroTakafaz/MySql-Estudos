-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- Note: CITY, CountryCode and COUNTRY.Cody are matching key columns.

select 
    city.name
from city
join country on city.countrycode = country.code
where country.continent = 'Africa';

-----------------------------------------------------------------

-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent)
-- and their respective average city populations (CITY.population) rounded down to the nearest integer
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population)) AS AveragePopulation
FROM CITY
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent;

-----------------------------------------------------------------

-- Given the CITY and COUNTRY tables, query sum of the populations of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

select
    sum(city.population)
from city
join country on city.countrycode = country.code
where country.continent = 'Asia';

-----------------------------------------------------------------

-- We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table.
-- Write a query to find the maximum total earnings for all employess as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers

select max(TotalEarnings) AS MaxEarnings, count(*) AS NumberOfEmployees
from (
    select employee_id, (salary * months) AS TotalEarnings
    from Employee
) AS EmployeeEarnings
where TotalEarnings = (
    select max(TotalEarnings)
    from (
        select employee_id, (salary * months) AS TotalEarnings
        from Employee
    ) AS MaxEarningsSubQuery
);

-----------------------------------------------------------------

-- Consider P1 (a, b) and P2 (c, d) to be two points on a 2d plane.
-- a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
-- b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
-- c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
-- d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
-- Quey the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

SELECT 
    ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4)
FROM STATION;