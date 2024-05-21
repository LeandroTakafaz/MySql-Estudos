-- Exercícios feitos para obter Certificado de SQL (Basic)

-- A university has started a student-advisor plano which assigns a professor as an advisor to each student for acadêmico guidance. 
-- Write a query to find the roll number and na mês of students who either have a male advisor with a salary of more than 15,000 or a female advisor with a salary of more than 20,000.
-- There are two tables in the database: student_information and faculty_information. The primary key of student_information is roll_number whereas that of faculty_information is employee_id.

select s.roll_number, s.name
from student_information s
join faculty_information f on s.advisor_id = f.employee_id
where (f.gender = 'Male' and f.salary > 15000)
   or (f.gender = 'Female' and f.salary > 20000);

-------------------------------------------------------------------------

-- On the basis of mérito, a company decides to promoter some of its employee in its HR divisional at the end of the quarter because of the ir high performance. 
-- Write a query to fins the employee IDs along with the names of all its employees who work in the HR departamento who earned a bônus of 5000 dollars or more in the last quarter.
-- There are two tables in the database: employee_information and last_quarter_bônus. The ir primary keys are employee_ID.

select e.employee_ID, e.name
from employee_information e
join last_quarter_bonus b on e.employee_ID = b.employee_ID
where e.department = 'HR' and b.bonus_amount >= 5000;