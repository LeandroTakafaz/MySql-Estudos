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