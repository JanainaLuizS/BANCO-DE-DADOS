create database gestao_escolar;

use gestao_escolar;

create table aluno (
id_aluno int,
nome varchar (100),
data_nascimento date,
telefone char(13)
);

insert into aluno (
id, nome, data_nascimento, telefone
) values (
1, 'Maria Silva', '1997-05-10', '24 988528966'), (2, 'João Oliveira', '1998-04-10', '24 988485566'), (3, 'Téo dos Santos', '1996-03-11', '24 988473699'), (4, 'José Maria', '1998-05-24', '24 988478855'), (5, 'Carlos Vargas', '1997-06-25','24 988476633');


select * from cliente;
select nome, email, idade from cliente;