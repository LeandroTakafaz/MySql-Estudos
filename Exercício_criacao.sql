create table palestra (
	id int primary key auto_increment,
	titulo_palestra varchar(100) not null,
	tema_palestra varchar(50) not null,
	data_palestra date not null,
	hora_palestra time not null
);

create table palestrante (
	plt_id int primary key auto_increment,
	plt_nome varchar(100) not null,
	plt_cpf varchar(11) not null unique,
	plt_tele varchar(11) not null unique,
	qtde_palestras int not null,
	plt_num int not null,
    plt_rua varchar(100) not null,
    cep varchar(9) not null,
    
    foreign key (plt_id) references palestra(id)
);

create table lugar (
	lugar_id int primary key auto_increment,
	lugar_nome varchar (100) not null,
	qtde_pessoas int not null,
	
	foreign key (lugar_id) references palestra(id)
);

create table participante (
   	part_id int primary key auto_increment,
   	part_bairro varchar (50) not null,
    part_cep varchar(9) not null,
    part_rua varchar(100) not null,
    part_numero int not null,
    part_nome varchar(100) not null,
    part_email varchar(100) not null,
    part_telefone varchar(11) not null,
    part_cpf varchar(14) not null unique,
    
    foreign key (part_id) references palestra(id)
);

create table tipo (
	tipo_id int primary key auto_increment,
	tipo_desc text
);

create table patrocinador (
	patroc_id int primary key auto_increment,
	patroc_nome varchar (100) not null,
	patroc_telefone varchar(11) not null,
	
	foreign key (patroc_id) references tipo(tipo_id)
);

-- Inserts para a tabela palestra
insert into palestra (titulo_palestra, tema_palestra, data_palestra, hora_palestra) values
('A Arte da Pintura Moderna', 'Conferência de Artes', '2024-07-01', '09:00:00'),
('Escultura no Século 21', 'Conferência de Artes', '2024-07-02', '10:00:00'),
('Fotografia Contemporânea', 'Conferência de Artes', '2024-07-03', '11:00:00'),
('Música e Movimento', 'Conferência de Artes', '2024-07-04', '13:00:00'),
('O Renascimento do Teatro', 'Conferência de Artes', '2024-07-05', '14:00:00'),
('Cinema e Sociedade', 'Conferência de Artes', '2024-07-06', '15:00:00'),
('Literatura e Identidade', 'Conferência de Artes', '2024-07-07', '16:00:00'),
('Dança como Expressão Cultural', 'Conferência de Artes', '2024-07-08', '17:00:00'),
('Artes Visuais e Tecnologia', 'Conferência de Artes', '2024-07-09', '18:00:00'),
('Arte Urbana e Espaço Público', 'Conferência de Artes', '2024-07-10', '19:00:00');


-- Inserts para a tabela palestrante
insert into palestrante (plt_nome, plt_cpf, plt_tele, qtde_palestras, plt_num, plt_rua, cep) values
('Gabriel Teixeira', '67890123456', '9623456789', 7, 605, 'Rua das Canções', '69000-600'),
('Lívia Barros', '78901234567', '9734567890', 5, 705, 'Avenida das Esculturas', '69000-700'),
('Rafaela Soares', '89012345678', '9845678901', 8, 805, 'Travessa das Artes', '69000-800'),
('Bruno César', '90123456789', '9956789012', 10, 905, 'Alameda dos Artistas', '69000-900'),
('Carla Dias', '01234567890', '9067890123', 9, 1005, 'Vila Cultural', '69001-000');


-- Inserts para a tabela lugar
insert into lugar (lugar_nome, qtde_pessoas) values
('Auditório Estrela do Norte', 120),
('Centro de Convenções Amazonas', 300),
('Teatro Manauara', 250),
('Espaço de Eventos Rio Negro', 180),
('Sala de Conferências Solimões', 90);


-- Inserts para a tabela participante
insert into participante (part_bairro, part_cep, part_rua, part_numero, part_nome, part_email, part_telefone, part_cpf) values
('Jardim das Artes', '69000-020', 'Rua das Esculturas', 101, 'Juliana Martines', 'juliana.martins@example.com', '9212345678', '111.222.333-44'),
('Vila Cultural', '69000-021', 'Avenida da Pintura', 202, 'Marcos Ribeiro', 'marcos.ribeiro@example.com', '9312345678', '222.333.444-55'),
('Bairro das Telas', '69000-022', 'Travessa dos Murais', 303, 'Fernanda Correia', 'fernanda.correia@example.com', '9412345678', '333.444.555-66'),
('Alameda dos Poetas', '69000-023', 'Largo dos Literatos', 404, 'Ricardo Nunes', 'ricardo.nunes@example.com', '9512345678', '444.555.666-77'),
('Condomínio dos Músicos', '69000-024', 'Praça das Notas', 505, 'Sofia Castro', 'sofia.castro@example.com', '9612345678', '555.666.777-88');

select * from participante p;

-- Inserts para a tabela tipo
insert into tipo (tipo_desc) values
('Tecnológico'),
('Científico'),
('Cultural'),
('Educacional'),
('Empresarial');

-- Inserts para a tabela patrocinador
insert into patrocinador (patroc_nome, patroc_telefone) values
('Empresa X', '92937374858'),
('Organização Y', '93948483701'),
('Grupo Z', '92993014567'),
('Instituto W', '92965748392'),
('Fundação V', '92903495871');

-- Selecionar todos os palestrantes e suas palestras:
select plt_nome as Palestrante, titulo_palestra as Palestra
from palestrante
join palestra on palestrante.plt_id = palestra.id;

-- Contar o número de participantes em cada bairro:
select part_bairro, count(*) as qtde_participantes
from participante
group by part_bairro;

-- Listar todas as palestras que ocorrerão após uma determinada data:
select *
from palestra
where data_palestra > '2024-05-22';

-- Encontrar o nome e o telefone dos patrocinadores de um determinado tipo de evento:
select patroc_nome, patroc_telefone
from patrocinador
join tipo on patrocinador.patroc_id = tipo.tipo_id
where tipo_desc like '%Tecnológico%';
