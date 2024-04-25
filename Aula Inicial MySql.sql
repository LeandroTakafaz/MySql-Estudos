-- Criar um Banco de Dados

create database campcode;

-- Remover um Banco de Dados

drop database banco_teste;

-- Selecionar o Banco Utilizado

use campcode;

-- Criar uma Tabela

create table curso (
	codigo INT PRIMARY KEY,
	nome VARCHAR(100),
	nivel CHAR(1)
	);
	
-- Remover uma Tabela

drop table pessoas;


-- DML => Data Manipulation Language - Serve para Manipular os Dados dentro do BD
-- DDL => Data Definition Language - Serve para Estruturar o seu Banco de Dados, ou Defini-lo.
-- DCL => Data Control Language - Serve para questões de segurança, Controle de Usúarios, permissões e etc...


-- Tipos de Dados

-- SMALLINT: Armazena números inteiros curtos. Ocupa 2 bytes e pode representar valores na faixa de -32768 a 32767.
-- INT(INTEGER): Armazena números inteiros padrão. Ocupa 4 bytes e pode representar valores na faixa de -2,147,483,648 a 2,147,483,647.
-- BIGINT: Armazena números inteiros grandes. Ocupa 8 bytes e pode representar valores na faixa de -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807.

-- DECIMAL: Armazena números decimais exatos. É uma escolha comum para valores financeiros. A precisão e a escala são especificadas, varia em média 2 bytes.
-- FLOAT e DOUBLE: Armazena números de ponto flutuante. DOUBLE tem mais precisão que Float. Ambos são usados para números aproximados, varia entre 4 e 8 bytes.
-- REAL: Similar ao FLOAT, representa números de ponto flutuante de precisão simples, inicia com 8 bytes.
-- BOOLEAN: Armazena valores booleanos, que  podem ser TRUE, FALSE ou NULL.

-- DATE: Armazena apenas a data no formato 'YYYY-MM-DD'.
-- DATETIME: Armazena data e hora no formato 'YYYY-MM-DD HH:MI:SS'.
-- TIMESTAMP: Armazena data e hora, mas normalmente é afetado pelo fuso hórario.
-- TIME: Armazena apenas a hora no formato 'HH:MI:SS'.

-- CHAR: Armazena strings de tamanho fixo. Preenche com espaços à direita para atingit o tamanho especificado.
-- VARCHAR: Armazena strings de tamanho variaável. Não preenche com espaços extras.
-- TAMANHO: ASCII básico(por exemplo: 'A', '1', '@') 1 byte. Especial (por exemplo: '£', '§', 'º') 2 bytes. Complexos (por exemplo: emojis) 4 bytes.

-- TINYTEXT: Armazena strings de tamanho máximo de 255 caracteres.
-- TEXT: Armazena strings de tamanho máximo de 65,535 caracteres.
-- LONGTEXT: Armazena strings de tamanho máximo de 4 gigabytes