-- PRIMARY KEY: É como o número de identidade único para cada linha em uma tabela.
-- AUTO_INCREMENT: É como um contador automático para novas linhas em uma tabela.
-- UNIQUE: Garante que todos os valores em uma coluna sejam diferentes, como um e-mail ou nome de usuário.
-- NOT NULL: Significa que a coluna não pode ficar vazia. Ela precisa ter algum valor.
-- DEFAULT: Se você não der um valor para a coluna, ela automaticamente usará o valor padrão definido.
-- CHECK: É como um porteiro que só permite valores que obedecem a uma regra específica em uma coluna.

create table ALUNOS(
	matricula int primary key auto_increment,
	nome varchar(100) not null,
	CPF varchar(100) not null unique,
	idade int not null check (idade >= 18),
	ativo boolean default true
);

INSERT INTO alunos (Nome, CPF, Idade) VALUES ('João Silva', '123.456.789-01', 20);
INSERT INTO alunos (Nome, CPF, Idade) VALUES ('Maria Santos', '234.567.890-12', 17);
INSERT INTO alunos (Nome, CPF, Idade) VALUES ('Pedro Almeida', '345.678.901-23', 19);
INSERT INTO alunos (Nome, CPF, Idade) VALUES ('Ana Pereira', '456.789.012-34');
INSERT INTO alunos (Nome, CPF, Idade, ativo) VALUES ('Lucas Costa', '567.890.123-45', 23, FALSE);

select * from alunos;