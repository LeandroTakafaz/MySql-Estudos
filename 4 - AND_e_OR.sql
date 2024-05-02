select * from funcionario;

select * from funcionario where cargo = 'Professor' and salario = 3000.52; 		-- Usando o AND você pode pesquisar utilizando dois ou mais tipos de busca, caso corresponda, voltará o resultado

select * from funcionario where cargo = 'Coordenador' or salario = 3000.52; 	-- Usando o OR você pesquisa mais de um tipo de busca e retorna os resultados caso cumpra com pelo menos um requisito.

select * from funcionario where (salario < 3000 or cargo = 'recepcionista') or (cargo = 'Coordenador' or salario = 3000.52);	-- coloque duas buscas entre parenteses e separadas pelo or para ter mais de um tipo de busca.