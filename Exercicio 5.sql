-- Query the following two values from the STATION table:
-- 1. The sum of all values in LAT_N rounded to a scale of 2 decimal places.
-- 2. The sum of all values in LONG_W rounded to a scale of 2 decimal places.

select
    round(sum(lat_n), 2),
    round(sum(long_w), 2)
from station;

-----------------------------------------------------------------

-- Query the sum of northen latitudes (lat_n) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.

select
    round(sum(lat_n), 4)
from station
where lat_n > 38.7880 and lat_n < 137.2345;

-----------------------------------------------------------------

-- Query the greatest value of the Northern Latitudes (lat_n) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.

select
    round(max(lat_n), 4)
from station where lat_n < 137.2345;

-----------------------------------------------------------------

-- Query the Western Longitude (long_w) for the lasgest Northern Latitude (lat_n) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

select
    round(long_w, 4)
from station
where lat_n = (
    select max(lat_n)
    from station
    where lat_n < 137.2345
);

-----------------------------------------------------------------

-- Query the smallest Northern Latitude (lat_n) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.

select
    round(min(lat_n), 4)
    from station where lat_n > 38.7780;

-----------------------------------------------------------------

-- Query the Western Longitude (long_w) where the smallest Northern Latitude (lat_n) in STATION is greaters than 38.7780. Round your answer to 4 decimal places.

select
    round(long_w, 4)
from station
where lat_n = (
    select min(lat_n)
from station
where lat_n > 38.7780
);