
create database falae_db;

drop database denun_db;

use falae_db;

create table destinatario_denun (
 id INT AUTO_INCREMENT PRIMARY KEY,
 nome varchar(100),
 sigla varchar(50)
);

create table categorizacao_denun (
id int auto_increment primary key,
nome varchar(100)
);

drop table denuncia;

create table denuncia (
id int auto_increment primary key,
criado_por varchar(100),
criado_em date null,
titulo varchar(100),
descricao text,
tipo_do_denunciado varchar(100),
nome_denunciado varchar(100),
turma_cargo varchar(100),
curso_funcao varchar(100),
numero_processo varchar(100),
status varchar(50) default 'Pendente',
fk_id_categorizacao int,
fk_id_destinatario int,
FOREIGN KEY (fk_id_categorizacao) REFERENCES categorizacao_denun(id),
FOREIGN KEY (fk_id_destinatario) REFERENCES destinatario_denun(id)
);


insert destinatario_denun (nome, sigla)
values ('Direção de Ensino', 'ARI - DE'), ('Apoio a o educando', 'ARI - CAED'), ('Chefia de Gabinete de Ariquemes', 'ARI - CGAB');

insert categorizacao_denun (nome)
values ('Roubo'), ('Agressão'), ('cyberbullying');

select * from destinatario_denun dd

select * from categorizacao_denun cd

select * from denuncia d

update denuncia set fk_id_categorizacao = 2, fk_id_destinatario = 2 where id = 1


INSERT INTO falae_db.denuncia (
criado_por,
titulo,
descricao,
tipo_do_denunciado,
nome_denunciado,
turma_cargo,
curso_funcao,
status,
fk_id_categorizacao,
fk_id_destinatario)
values (
'Jhonson',
'Fui agredido no patio',
'recebi um cascudo no patio com meu amigo victor',
'ALUNO',
'Maikon',
'3º B',
 'Agropecuaria',
'Pendente',
NULL,
NULL);
