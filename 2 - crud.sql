-- CREATE: Serve para inserir informações no Banco de dados

INSERT INTO NOME_TABELA(campo1, campo2,...) VALUES(valor1, valor2,...)

-- READ: Select - Busca informações do banco de dados.

SELECT * FROM NOME_TABELA WHERE condição;

-- UPDATE: Altera os valores das colunas em uma linha específica do banco de dados.

UPDATE NOME_TABELA SET campo = 'novo_valor' WHERE condição;

-- DELETE: Remove as informações da tabela que atenderem a determinada condição.

DELETE FROM NOME_TABELA WHERE condição;

---------------------------------------------------------------

select * from curso;

insert into curso (codigo, nome, nivel) values (1, "MySql Introdução ao Intermediario", 'A'); -- Maneira padrão de inserir dados.

insert into curso values (2, "MySql Avançado", 'B'); -- Se manter a ordem padrão não precisa declarar a ordem. 

insert into curso (nome, codigo, nivel) values ("Flask - Do básico ao avançado", 3, 'C'); -- Caso a ordem padrão seja alterada, declare como ela será inserida.

insert into curso values							-- Pode ser adicionado mais de uma informação quando separado por uma vírgula
	(4, 'Python Avançado', 'D'),
	(5, 'Lógica de Programação com Python', 'E');

select nome, nivel from curso where nivel = 'A';  -- Seleciona o que quer que seja puxado e pergunta através do where qual a base utilizada para a pesquisa.

update curso set nivel = 'A' where codigo = 3;  -- Atualiza o banco de dados baseado em uma condição do where, usando o set deve ser setado qual a mudança que deve ser feita.

delete from curso where codigo = 5;  -- Deleta os dados do banco baseado na seleção do banco de dados que deseja e através de uma primary key setada no where.

delete from curso where nome = "Python Avançado" and codigo	= 4;