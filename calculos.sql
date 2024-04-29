select 
	nome as "Nome do Funcionário",
	salario,
	salario + 500 as "Aumento",
	salario - 500 as "Diminuição",
	salario * 2 as "Multiplicação",
	salario / 2 as "Divisão"
from funcionario;