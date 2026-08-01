drop database if exists loja_senai;
CREATE DATABASE loja_senai;
USE loja_senai;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(80),
    cidade VARCHAR(50),
    idade INT,
    genero ENUM('M', 'F')
);

set sql_safe_updates = 0 ; # esse comando serve para desativar 

INSERT INTO clientes (id_cliente, nome, email, cidade, idade, genero) VALUES
(1, 'Ana Souza', 'ana.souza@gmail.com', 'Rio de Janeiro', 28, 'F'),
(2, 'Bruno Lima', 'bruno.lima@yahoo.com', 'São Paulo', 35, 'M'),
(3, 'Carla Torres', 'carla.torres@hotmail.com', 'Belo Horizonte', 22, 'F'),
(4, 'Diego Alves', 'diego.alves@gmail.com', 'Curitiba', 31, 'M'),
(5, 'Eduarda Ramos', 'eduarda.ramos@outlook.com', 'Niterói', 26, 'F'),
(6, 'Felipe Mendes', 'felipe.mendes@gmail.com', 'Salvador', 40, 'M'),
(7, 'Gabriela Costa', 'gabi.costa@yahoo.com', 'São Paulo', 21, 'F'),
(8, 'Henrique Silva', 'henrique.silva@gmail.com', 'Recife', 33, 'M'),
(9, 'Isabela Rocha', 'isabela.rocha@hotmail.com', 'Porto Alegre', 27, 'F'),
(10, 'João Pedro', 'joao.pedro@gmail.com', 'Vitória', 29, 'M'),
(11, 'Karen Santos', 'karen.santos@gmail.com', 'Campinas', 30, 'F'),
(12, 'Lucas Andrade', 'lucas.andrade@yahoo.com', 'Rio de Janeiro', 25, 'M'),
(13, 'Mariana Pires', 'mariana.pires@gmail.com', 'Fortaleza', 32, 'F'),
(14, 'Nicolas Melo', 'nicolas.melo@hotmail.com', 'Manaus', 24, 'M'),
(15, 'Otávio Faria', 'otavio.faria@gmail.com', 'Natal', 28, 'M'),
(16, 'Patrícia Nogueira', 'patricia.nogueira@yahoo.com', 'São Luís', 35, 'F'),
(17, 'Rafaela Lima', 'rafaela.lima@gmail.com', 'Belém', 23, 'F'),
(18, 'Samuel Barbosa', 'samuel.barbosa@gmail.com', 'João Pessoa', 34, 'M'),
(19, 'Tatiane Moraes', 'tatiane.moraes@gmail.com', 'Florianópolis', 29, 'F'),
(20, 'Vinícius Teixeira', 'vinicius.teixeira@gmail.com', 'Goiânia', 27, 'M');

#Exercício 1 – Atualização do nome
#Altere o nome do cliente com id_cliente igual a 1 para o seu nome

update clientes 
set nome = 'J.L.' 
where id_cliente = 1; 

#Exercício 2 – Atualização do email
#Altere o email do cliente com id_cliente igual a 1 para o seu email

update clientes 
set email = 'jl@ hotmail.com' 
where id_cliente = 1; 

#Exercício 1 – Excluindo cliente
#Exclua o cliente com id_cliente igual a 1

delete from clientes
where id_cliente = 1;

#Exercício 1
#Corrigir o e-mail abreviado da Gabriela (id 7)


#Exercício 2
#Ajustar cidade da Carla (id 3) de “Belo Horizonte” para “Contagem”

update clientes 
set cidade =  'Contagem'
where id_cliente = 3 ; 

#Exercício 3
#Atualizar a idade do Felipe (id 6) de 40 para 41

update clientes 
set idade =  41
where id_cliente = 6 ; 

#Exercício 4
#Padronizar cidade do Bruno (id 2) para incluir UF: “São Paulo - SP”
update clientes 
set cidade = 'São Paulo - SP'
where id_cliente = 2 ; 

#Exercício 5
#Corrigir e-mail da Karen (id 11) para @empresa.com

update clientes 
set email =  'karen.santos@empresa.com'
where id_cliente = 11 ; 

#Exercício 6
#Trocar cidade do João Pedro (id 10) de “Vitória” para “Cariacica”

update clientes 
set cidade = 'Cariacica'
where id_cliente = 10 ; 

#Exercício 7
#Atualizar idade da Patrícia (id 16) de 35 para 36

update clientes 
set idade =  36
where id_cliente = 16 ; 

#Exercício 8
#Corrigir cidade da Isabela (id 9) para “Caxias do Sul”

update clientes 
set cidade = 'Caxias do Sul'
where id_cliente = 9 ; 


#Exercício 10
#Aumentar em 1 a idade de todos os clientes do Rio de Janeiro

update clientes 
set idade = idade + 1
where cidade = 'Rio de Janeiro' ; 

#Exercício 1
#Exclua o cliente com id_cliente igual a 5

delete from clientes
where id_cliente = 5;

#Exercício 2
#Exclua o Felipe Mendes do banco de dados

delete from clientes
where nome = 'Felipe Mendes';

#Exercício 3
#Exclua todos os clientes de Manaus

delete from clientes
where cidade = 'Manaus';

#Exercício 4
#Exclua clientes com idade abaixo ou igual a 23 anos

delete from clientes
where idade <= 23;


select * from clientes;


