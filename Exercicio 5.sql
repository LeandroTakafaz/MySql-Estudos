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
