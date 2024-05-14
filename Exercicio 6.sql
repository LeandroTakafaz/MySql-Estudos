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

select 
    round(abs(min(lat_n) - max(lat_n)) + abs(min(long_w) - max(long_w)), 4)
from station;

-- O comando ABS no SQL é uma função matemática que retorna o valor absoluto (positivo) de uma expressão numérica especificada.
-- Em outras palavras, a função ABS muda de um valor negativo para um valor positivo.

-----------------------------------------------------------------

-- Consider P1 (a, c) and P2 (b, d) to be two points on a 2D plane where (a, b) are the respective minimum and maximum values of Northern Latitude (LAT_N)
-- and (c, d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
-- Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

select
    round(sqrt(power(max(lat_n) - min(lat_n), 2) + power(max(long_w) - min(long_w), 2)), 4) AS Euclidean_Distance
from station;

-- POWER: A função POWER no SQL retorna o valor de um número elevado à potência de outro número. A sintaxe da função POWER é POWER(a, b), onde a é a base e b é o expoente.
-- SQRT: A função SQRT no SQL retorna a raiz quadrada de um número. A sintaxe da função SQRT é SQRT(number), onde number é um número positivo do qual você deseja calcular a raiz quadrada.

-----------------------------------------------------------------

-- A median is defined as a number separating the higher half of a data set from the lower half.
-- Query the median of the Northern Latitudes (lat_n) from STATION and round your answer to 4 decimal places.

select round(lat_n, 4) AS MedianLat
from (
    select lat_n, count(*) over() as total_rows, row_number() over(order by lat_n) as row_num
    from station
) t
where t.row_num in ((total_rows + 1) / 2, (total_rows + 2) / 2);