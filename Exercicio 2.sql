-- Query the list of CITY names starting with vowels (i.i., a, e, i, o or u) from STATION. You result cannot contain duplicates.

select
    city
from STATION
where city regexp '^[aeiou].*$';  -- utlizando o regexp conseguimos filtrar apenas as letras que queremos para consulta.

-- ^ indica o início da string.
-- [aeiou] corresponde a qualquer caractere que seja uma vogal (a, e, i, o, u).
-- .* corresponde a qualquer número de qualquer caractere.
-- $ indica o fim da string.