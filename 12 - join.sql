-- JOIN: Combina linhas de duas tabelas onde a condição é verdadeira.
-- LEFT JOIN: Retorna todas as linhas da tabela à esquerda, e as correspondentes da direita.
-- RIGHT JOIN: Retorna todas as linhas da tabela à direita, e as correspondentes da esquerda.

select * from curso;
select * from alunos;
select * from matricula_curso2;

select 
	*
from matricula_curso2 mc
join alunos a on mc.aluno = a.matricula     -- Fazendo Join e variações nessa segunda tabela gera resultados Null devido não ter sido feita com ligações diretas entre as tabelas
join curso c on mc.curso = c.codigo;

select 
	*
from matricula_curso mc
right join alunos a on mc.aluno = a.matricula     -- Já nessa tabela, podemos usar livremente o Join e suas variações, tudo foi colocado de maneira correta e ligada por FK, puxando os dados sem erros.
right join curso c on mc.curso = c.codigo;