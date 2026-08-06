
create database cinecode ;

use cinecode;

create table clientes(
	id_cliente INT PRIMARY KEY auto_increment,
	nome VARCHAR(60),
    estado varchar (45),
    regiao varchar (45),
    sexo varchar (10),
    data_nascimento date,
    data_conta date
   );

create table filmes(
 id_filme int PRIMARY KEY auto_increment,
 titulo VARCHAR(60), 
 genero varchar (45),
 duracao varchar(45),
 ano_lancamento int,
preco_aluguel double
 );

create table atores(
id_ator  int PRIMARY KEY auto_increment,
nome_ator VARCHAR(60),
data_nascimento date,
nacionalidade varchar (20),
sexo varchar (10)
);

create table alugueis(
id_aluguel varchar(45),
id_cliente int,
id_filme int,
nota double,
data_aluguel date,
foreign key (id_cliente) references clientes(id_cliente),
foreign key (id_filme) references filmes(id_filme)
);

create table atuacoes(
id_protagonista int PRIMARY KEY auto_increment, 
id_filme int, 
id_ator int,
foreign key (id_filme) references filmes(id_filme),
foreign key (id_ator) references atores(id_ator)
);

insert into clientes (nome, estado, regiao, sexo, data_nascimento, data_conta) VALUES
('Ana Souza', 'Paraná', 'Sul', 'F', '1992-10-05', '2026-06-10'),
('Bruno Lima', 'Paraná', 'Sul', 'M', '1982-05-25', '2026-05-15'),
('Carla Torres','Paraná', 'Sul', 'F', '1988-05-04', '2026-01-06');

insert into filmes (titulo, genero, duracao, ano_lancamento,preco_aluguel) values
('O Poderoso Chefão', 'Crime, Drama','2:00:00', 1972, 5.00),
('Matrix', 'Ficção Científica,Ação','2:20:00', 1999, 5.00);

insert into atores (nome_ator, data_nascimento, nacionalidade, sexo) values 
('Marlon Brando', '1924-04-3', 'Norte-americano', 'M'),
('Al Pacino', '1940-04-25', 'Norte-americano', 'M'),
('Robert De Niro', '1943-08-17', 'Norte-americano', 'M'),
('Keanu Reeves', '1964-09-2','Canadense','M' ),
('Laurence Fishburne', '1961-07-30', 'Norte-americano', 'M'),
('Carrie-Anne Moss', '1967-08-21', 'Canadense', 'F');

insert into atuacoes(id_filme, id_ator) values (2,4);

insert into alugueis (id_aluguel ,id_cliente ,id_filme ,nota ,data_aluguel ) values 
('1', 1, 2, 10, '2026-08-06'),
('2', 2,1, 8, '2026-08-05');


select * from alugueis;