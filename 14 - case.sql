-- O CASE no MySQL é uma estrutura de controle de fluxo que permite que você adicione lógica condicional ao seu SQL.
-- Ele funciona de maneira semelhante a uma instrução if-else em outras linguagens de programação.
update curso set nivel = 'I' where nome = 'MySql Introdução ao Intermediario';

select 
	c.nome as curso,
	
	case 
		when c.nivel = 'A' then 'Avançado'
		when c.nivel = 'I' then 'Intermediário'
		when c.nivel = 'B' then 'Básico'
		else 'Existe nada aqui não'
	end as nivel,
	
	c.nivel as nivel,
	a.nome as aluno
	from matricula_curso mc
	left join curso c on mc.curso = c.codigo
	left join alunos a on mc.aluno = a.matricula;
	
update funcionario set salario = 5000 where nome = 'João'

-- Testando Case dentro de Case e seus funcionamentos.
select 
	nome,
	cargo,
	salario,
	case 
		when cargo = 'Professor'then
			case
				when salario > 3500 then round(salario * 1.10, 2)
				else round(salario * 1.15, 2)
			end
			
		when cargo = 'Coordenador' then round(salario * 1.30, 2)
		else round(salario * 1.05, 2)
	end as novo_salario
from funcionario f;

-- Código mais limpo de forma mais direta.
select 
	nome,
	cargo,
	salario,
	case 
		when cargo = 'Professor' and salario > 3500 then round(salario * 1.10, 2)
		when cargo = 'Professor' and salario <= 3500 then round(salario * 1.15, 2)
		when cargo = 'Coordenador' then round(salario * 1.30, 2)
		else round(salario * 1.05, 2)
	end as novo_salario
from funcionario f;