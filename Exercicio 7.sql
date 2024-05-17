-- Exercício Bônus

-- 1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.> enclosed in parentheses).
-- For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

-- 2. Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
-- 'There are a total of [occupation_count] [occupation]s.

select result from (
  (select concat(name, '(', LEFT(occupation, 1), ')') AS result
   from occupations
   order by name asc)
   
  union all
   
  (select concat('There are a total of ', count(*), ' ', lower(occupation), 's.')
   from occupations
   group by occupation)
) AS combined_results
order by case 
  when result like 'There are a total of%' then 1
  else 0
end, result;

-- Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation.
-- The output column headers should be Doctor, Professor, Singer, and Actor, respectively.
-- Note: Print NULL when there are no more names corresponding to an occupation.

set @r1 = 0, @r2 = 0, @r3 = 0, @r4 = 0;
select MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
from (
  select case
           when Occupation = 'Doctor' then (@r1:=@r1+1)
           when Occupation = 'Professor' then (@r2:=@r2+1)
           when Occupation = 'Singer' then (@r3:=@r3+1)
           when Occupation = 'Actor' then (@r4:=@r4+1) END AS RowNumber,
         case when Occupation = 'Doctor' then name end as Doctor,
         case when Occupation = 'Professor' then name end as Professor,
         case when Occupation = 'Singer' then name end as Singer,
         case when Occupation = 'Actor' then name end as Actor
  from OCCUPATIONS
  order by Doctor, Professor, Singer, Actor
) temp
group by RowNumber;

-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
*****
****
***
**
*
-- Write a query to print the pattern P(20).

SET @row_number = 0;
SELECT REPEAT('* ', 21 - @row_number := @row_number + 1) AS PATTERN
FROM information_schema.tables
LIMIT 20;