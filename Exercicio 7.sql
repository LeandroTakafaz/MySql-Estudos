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