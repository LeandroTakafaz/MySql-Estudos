-- UNION: O operador UNION combina os resultados de duas ou mais consultas SELECT removendo duplicatas para criar um único conjunto de registros.
-- UNION ALL: O operador UNION ALL também combina os resultados de duas ou mais consultas SELECT, mas, ao contrário do UNION, ele não remove duplicatas.

select * from curso c; 

-- Utilizando apenas o Union ele puxa todos os dados, exceto dados repetidos entre as buscas.
select nome, nivel from	curso c where codigo = 2
union
select nome, nivel from curso c where nivel = 'A';

-- Utilizando o Union All ele puxa independente de possuir um dado repetido ou não, a busca pode ficar duplicada se baterem.
select nome, nivel from	curso c where codigo = 3
union all
select nome, nivel from curso c where nivel = 'A';

-- Consultas no Union devem estar com os dados corretos e a busca organizada, caso contrário, pode haver resultados incorretos na hora da busca.