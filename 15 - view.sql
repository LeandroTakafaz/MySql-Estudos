-- No MySQL, uma View é uma tabela virtual baseada no resultado de uma instrução SQL. Ela contém linhas e colunas, assim como uma tabela real.
-- A diferença é que as colunas de uma View são colunas de uma ou mais tabelas reais na base de dados.

select * from alunos al;
select * from matricula_curso mc;
select * from curso c;

create view curso_aluno as
select
	cr.nome,
	case 
		when cr.nivel = 'A' then 'Avançado'
		when cr.nivel = 'I' then 'Intermediário'
		when cr.nivel = 'B' then 'Básico'
	end as nivel,
	al.nome as aluno
	
from  matricula_curso mc
left join curso cr on cr.codigo = mc.curso
left join alunos al on al.matricula = mc.aluno;

select * from curso_aluno;