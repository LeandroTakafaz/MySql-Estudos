-- Query the list of CITY names starting with vowels (i.i., a, e, i, o or u) from STATION. You result cannot contain duplicates.

select distinct
    city
from station
where city regexp '^[aeiou].*$';  -- utlizando o regexp conseguimos filtrar apenas as letras que queremos para consulta.

-- ^ indica o início da string.
-- [aeiou] corresponde a qualquer caractere que seja uma vogal (a, e, i, o, u).
-- .* corresponde a qualquer número de qualquer caractere.
-- $ indica o fim da string.

-------------------------------------------------------------------

-- Expansão do Exercício --

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o and u) as both their first and last characters. Your result cannot contain duplicates.

select distinct
    city
from station
where city regexp '^[aeiou].*[aeiou]$';

-------------------------------------------------------------------

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

select distinct
    city
from station
where city not regexp '^[aeiou].*$';

-------------------------------------------------------------------

-- Query the list of CITY names from STATION that either do not end with vowels. Your result cannot contain duplicates.

select distinct
    city
from station
where city not regexp '^.*[aeiou]$';

-------------------------------------------------------------------

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

select distinct
    city
from station
where city not regexp '^[aeiou].*[aeiou]$';

-------------------------------------------------------------------

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

select distinct
    city
from station
where city not regexp '^[aeiou].*$' and city not regexp '^.*[aeiou]$';