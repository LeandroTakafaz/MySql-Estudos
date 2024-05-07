-- Query the list of CITY names starting with vowels (i.i., a, e, i, o or u) from STATION. You result cannot contain duplicates.

select
    city
from STATION
where city regexp '^[aeiou].*$';  -- utlizando o regexp conseguimos filtrar apenas as letras que queremos para consulta.

-- ^ indica o início da string.
-- [aeiou] corresponde a qualquer caractere que seja uma vogal (a, e, i, o, u).
-- .* corresponde a qualquer número de qualquer caractere.
-- $ indica o fim da string.

-------------------------------------------------------------------

-- Expansão do Exercício --

--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o and u) as both their first and last characters. Your result cannot contain duplicates.

select
    CITY
from STATION
where CITY regexp '^[aeiou].*[aeiou]$';