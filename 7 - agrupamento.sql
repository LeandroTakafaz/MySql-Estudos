-- GROUP_CONCAT: Esta função concatena os valores de uma coluna em um único string. Por exemplo, se tivermos uma tabela de alunos e cada aluno tem uma matéria favorita, 
-- GROUP_CONCAT pode ser usado para criar uma lista de todas as matérias favoritas.
-- SUM: Esta função soma todos os valores de uma coluna específica. Por exemplo, se tivermos uma tabela de vendas, podemos usar SUM para calcular o total de vendas.
-- COUNT: Esta função conta o número de linhas que correspondem a um critério específico. Por exemplo, podemos contar o número de alunos que passaram em uma matéria usando COUNT.
-- AVG: Esta função calcula a média dos valores em uma coluna específica. Por exemplo, podemos calcular a média das notas dos alunos em uma matéria usando AVG.
-- MIN: Esta função retorna o menor valor em uma coluna específica. Por exemplo, podemos encontrar a nota mais baixa em uma matéria usando MIN.
-- MAX: Esta função retorna o maior valor em uma coluna específica. Por exemplo, podemos encontrar a nota mais alta em uma matéria usando MAX.
-- ROUND: Esta função arredonda um número para um número específico de casas decimais.

select
	cargo,
	group_concat(nome) as "Concatenar tabela",
	count(nome) as "Funcionários",
	sum(salario) as "Soma dos Salários", 
	avg(salario) as "Média Geral", 
	min(salario) as "Menor Salário",
	max(salario) as "Maior Salário",
	round(avg(salario), 2) as "Média Tratada" 
from funcionario
group by cargo;