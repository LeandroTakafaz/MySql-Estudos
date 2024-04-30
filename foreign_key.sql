-- Uma Foreign Key (Chave Estrangeira) no MySQL é usada para estabelecer uma ligação entre os dados em duas tabelas.

select * from curso;
select * from alunos;

create table matricula_curso (
	id int primary key auto_increment,
	aluno int not null,
	curso int not null,
	
	foreign key (aluno) references alunos(matricula),
	foreign key (curso) references curso(codigo)
	);
	
select * from matricula_curso;

insert into matricula_curso (aluno, curso) values
	(1, 1), (2, 3), (2, 2), (4, 1), (3, 3), (3, 1);
	
create table matricula_curso2 (
	id int primary key auto_increment,
	aluno int not null,
	curso int not null
	);
	
select * from matricula_curso2;

insert into matricula_curso2 (aluno, curso) values
	(1, 1), (2, 3), (2, 2), (74, 1), (3, 35), (53, 1);