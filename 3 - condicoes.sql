-- Igualdade (=): Verifica se dois valores são iguais.
-- Diferente (<> ou !=): Verifica se dois valores são diferentes.
-- Maior (>): Verifica se um valor é maior que outro.
-- Maior ou igual (>=): Verifica se um valor é maior ou igual a outro.
-- Menor (<): Verifica se um valor é menor que outro.
-- Menor ou igual (<=): Verifica se um valor é menor ou igual a outro.
-- Está (IN): Verifica se um valor está em um conjunto de valores.
-- Não está (NOT IN): Verifica se um valor não está em um conjunto de valores.

-- Contenha (LIKE): Verifica se um valor contém um padrão específico.

-- %: Representa zero, um ou vários caracteres no LIKE.
-- _: Representa exatamente um caractere no LIKE.


create table funcionario (
	codigo int primary key auto_increment,				-- Usando o auto_increment para não ser necessário fornecer novamente o codigo, pois deve ser incrementado sozinho.
 	nome varchar(100),
 	cargo varchar(100),							
 	data_contratacao date,								-- Utilizando o DATE para puxar de forma correta a data da contratação do funcionario.
 	salario numeric(12, 2)								-- Usando o numeric com os números dentro para separar a quantidade de números antes e depois da vírgula.
 ); 						
 
select * from funcionario;

insert into funcionario (nome, cargo, data_contratacao, salario) values 	-- Inserindo valores para a tabela retirando o código devido ao auto_increment.
	("João", "Professor", "2020-05-29", 3000.52),
	('Felipe', 'Coordenador', '2022-03-20', 4500.89),
	('Giovana', 'Recepcionista', '2023-12-10', 2105.70);
	
drop table funcionario;

select * from funcionario where cargo = 'Professor'; 	-- Puxando todos com o cargo igual á Professor.

select * from funcionario where cargo <> 'Professor';	-- Puxando todos os Cargos Diferentes de Professor.

select * from funcionario where salario > 3000.52; 		-- Puxando todos com o Salário maior que 3000.52

select * from funcionario where salario >= 3000.52;		-- Agora com ele sendo maior ou igual á 3000.52

select * from funcionario where salario < 3000.52;		-- Puxando todos com o Salário menor que 3000.52

select * from funcionario where salario <= 3000.52;		-- Agora com ele sendo menor ou igual á 3000.52

select * from funcionario where cargo in ('Professor', 'Coordenador');		-- Pode escolher mais de uma consulta por vez.

select * from funcionario where cargo not in ('Professor'); -- Pode escolher mais de um para ser inibido na consulta.

select * from funcionario where nome like '%Jo%'; -- Traz na consulta qualquer um que possua os caracteres em alguma parte.

select * from funcionario where nome like 'F%';   -- Traz todos que possuam os caracteres no começo.

select * from funcionario where nome like '%E';   -- Traz todos que possuem os caracteres com a letra no final.

select * from funcionario where nome like '%A%';  -- Traz todos os Resultados que contenha em algum momento o caracter selecionado.

select * from funcionario where nome like '_O%';  -- O Underline serve para pular a quantidade de caracteres inicias necessário para fazer a consulta.

select * from funcionario where nome not like '__O%'; -- O not like nesse caso seleciona o que não tem essa condicional.