-- Query the total population of all cities in CITY where District is California.

select sum(population) from city where district = 'California';

----------------------------------------------------------------------

-- Query a cont of the number of cities in CITY having a Population larger than 100,000.

select count(name) from city where population > 100000;

----------------------------------------------------------------------

-- Query the average population of all cities in CITY where District is California.

select avg(population) from city where district = 'California';