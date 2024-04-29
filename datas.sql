-- YEAR(): Extrai o ano de uma data[8]. Por exemplo, YEAR('2024-04-29') retornaria 2024.
-- MONTH(): Extrai o mês de uma data[8]. Por exemplo, MONTH('2024-04-29') retornaria 4.
-- DAY(): Extrai o dia de uma data[8]. Por exemplo, DAY('2024-04-29') retornaria 29.
-- NOW(): Retorna a data e hora atuais[7]. Por exemplo, SELECT NOW(); poderia retornar 2024-04-29 13:26:44.
-- DATEDIFF(): Retorna a diferença entre duas datas[6]. Por exemplo, DATEDIFF('2024-04-29', '2024-01-01') retornaria 118, que é a diferença em dias entre as duas datas.
-- DATE_FORMAT(): Formata a data de acordo com um formato especificado[5]. Por exemplo, DATE_FORMAT('2024-04-29', '%d/%m/%Y') retornaria 29/04/2024.

select 
	nome,
	data_contratacao,
	now() as "atual",
	year(data_contratacao) as "ano",
	month(data_contratacao) as "mês",
	day(data_contratacao) as "dia",
	datediff(now(), data_contratacao) as diff 
from funcionario;