-- Exercício Bônus

-- 1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.> encolsed in parentheses).
-- For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

-- 2. Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
-- 'There are a total of [occupation_count] [occupation]s.

SELECT result FROM (
  (SELECT CONCAT(name, '(', LEFT(occupation, 1), ')') AS result
   FROM occupations
   ORDER BY name ASC)
   
  UNION ALL
   
  (SELECT CONCAT('There are a total of ', COUNT(*), ' ', lower(occupation), 's.')
   FROM occupations
   GROUP BY occupation)
) AS combined_results
ORDER BY CASE 
  WHEN result LIKE 'There are a total of%' THEN 1
  ELSE 0
END, result;