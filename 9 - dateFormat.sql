-- %a: Nome da semana abreviado (Seg a Dom)1.
-- %b: Nome do mês abreviado (Jan a Dez)1.
-- %c: Mês de forma numérica (1 a 12)1.
-- %D: Dia do mês com o sufixo inglês (1st, 2nd, 3rd, …)2.
-- %d: Dia do mês de forma numérica (01 a 31)2.
-- %e: Dia do mês de forma numérica (1 a 31)2.
-- %f: Microssegundos (000000 a 999999)2.
-- %H: Hora no formato de 24 horas (00 a 23)2.
-- %h: Hora no formato de 12 horas (01 a 12)2.
-- %I: Mesmo que %h2.
-- %i: Minutos (00 a 59)2.
-- %j: Dia do ano (001 a 366)2.
-- %k: Hora no formato de 24 horas sem zero à esquerda (0 a 23)2.
-- %l: Hora no formato de 12 horas sem zero à esquerda (1 a 12)2.
-- %M: Nome completo do mês (Janeiro a Dezembro)2.
-- %m: Mês de forma numérica com zero à esquerda (01 a 12)2.
-- %p: AM ou PM2.
-- %r: Hora no formato de 12 horas (hh:mm:ss AM/PM)2.
-- %S: Segundos com zero à esquerda (00 a 59)2.
-- %s: Mesmo que %S2.
-- %T: Hora no formato de 24 horas (hh:mm:ss)2.
-- %U: Semana onde domingo é o primeiro dia da semana (00 a 53)2.
-- %u: Semana onde segunda-feira é o primeiro dia da semana (00 a 53)2.
-- %V: Mesmo que %U, usado com %X2.
-- %v: Mesmo que %u, usado com %x2.
-- %W: Nome completo do dia da semana (Domingo a Sábado)2.
-- %w: Dia da semana onde domingo=0 e sábado=62.
-- %X: Ano para a semana onde domingo é o primeiro dia da semana, usado com %V2.
-- %x: Ano para a semana onde segunda-feira é o primeiro dia da semana, usado com %v2.
-- %Y: Ano como um valor numérico de 4 dígitos2.
-- %y: Ano como um valor numérico de 2 dígitos2.


select 
	now() as "Data Atual",
	date_format(now(), '%Y') as Y,
	date_format(now(), '%y') as y,
	date_format(now(), '%m') as m,
	date_format(now(), '%b') as b,
	date_format(now(), '%M') as M,
	date_format(now(), '%d') as d,
	date_format(now(), '%H') as H,
	date_format(now(), '%h') as h,
	date_format(now(), '%i') as i,
	date_format(now(), '%s') as s,
	date_format(now(), '%p') as p,
	date_format(now(), '%w') as w,
	date_format(now(), '%a') as a,
	date_format(now(), '%W') as W,
	date_format(now(), '%c') as c,
	date_format(now(), '%j') as j,
	date_format(now(), '%U') as U,
	date_format(now(), '%u') as u,
	date_format(now(), '%v') as v,
	date_format(now(), '%d/%m/%y') as "Data Formatada",
	date_format(now(), 'Manaus - %d de %M de %Y') as "Data Digitada"
from funcionario;