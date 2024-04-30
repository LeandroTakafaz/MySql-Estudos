-- FORMAT: A função FORMAT no MySQL é usada para formatar um número para um formato que pode ser exibido para os usuários.
-- Ela aceita dois argumentos: o número que você deseja formatar e o número de casas decimais para o resultado.

-- CONCAT: A função CONCAT no MySQL é usada para concatenar duas ou mais strings em uma única string.
-- Ela aceita uma lista de strings como argumentos e retorna a concatenação de todas as strings.

select round(777755533, 2) as "Valor Formatado";

select format(777755533, 2, 'de_DE') as "Valor Formatado BR", format(4440006665, 2) as "Valor Formatado Padrão";

select concat('Texto 1', ' - ', 'Texto 2') as "Concatenar";

select concat('R$ ', format(4400665, 2, 'de_DE')) as "Valor Formatado";

select
	nome,
	concat('R$ ', format(salario, 2, 'de_DE')) as "Salário"
from funcionario;