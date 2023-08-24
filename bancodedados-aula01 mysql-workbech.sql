-- Comentário
# Comentário
-- Precisa do ; no final de cada comando

-- Criar um banco de dados
CREATE DATABASE Empresa;

-- Mostrar banco de dados no computador
SHOW DATABASES;

-- Usar, selecionar um banco de dados
USE Empresa;

-- Criar uma tabela com nome "Cliente".
CREATE TABLE Empresa.Clientes(
	Id INT NOT NULL auto_increment,
	Nome VARCHAR(255) NOT NULL,
    Telefone VARCHAR(22) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    PRIMARY KEY (Id)
);

-- Inserindo dados na tabela
INSERT INTO Empresa.Clientes (Nome, Telefone, Email)
VALUES ('Marta', '(71) 8899-5522', 'marta@senai.com');

INSERT INTO Empresa.Clientes (Nome, Telefone, Email)
VALUES ('Hugo', '(71) 8377-5761', 'hugo@senai.com');

INSERT INTO Empresa.Clientes (Nome, Telefone, Email)
VALUES ('Kaua', '(71) 8129-2528', 'kaua@senai.com');

INSERT INTO Empresa.Clientes (Nome, Telefone, Email)
VALUES ('Marta', '(71) 9896-2528', 'marta@senai.com');

-- Selecionar/Mostrar os dados na tabela 
SELECT Nome, Telefone, Email FROM Empresa.Clientes;

-- Atualizar um registro
UPDATE Empresa.Clientes 
SET Telefone = '(71) 95552-7436';
-- WHERE ;

-- Apagar tabela "Clientes"
DROP TABLE Empresa.Clientes; 

#-------------Aula02--------------#
-- Criar um banco de dados
create database Empresa2;

-- Mostrar banco de dados no computador
show databases;

-- Usar, selecionar um banco de dados
use Empresa2;

-- Criar tabela
create table Empresa2.Clientes(
	Id INT auto_increment,
    Nome varchar(255) not null,
    Email varchar(255) not null,
    Telefone varchar(22) not null,
    primary key (Id)
);

-- Inserindo dados na tabela
insert into Empresa2.Clientes (Nome, Email, Telefone)
values ('Mateus','mateus@senai.br','(71) 9987-5855');

-- Mostrar registro na tabela
select * from Empresa2.Clientes;

-- Mostrar nome e email do cliente
select Nome, Email from Empresa2.Clientes;

-- Inserindo dados na tabela
insert into Empresa2.Clientes (Nome, Email, Telefone)
values ('Mateus','mateus@senai.br','(71) 9357-4425');

-- Atualizar um registro
update Empresa2.Clientes
set Email = 'mateusilva@senai.br' where Id = 2;

-- Apagar a tabela 
drop table Empresa2.Clientes;

-- Deletar um registro
delete from Empresa2.Clientes where Id = 2;

select * from Empresa2.Clientes;

#----------------------livraria----------------------#
create database Livraria;

use Livraria;

create table Livraria.Livros(
	Id INT auto_increment,
    Livro varchar(255) not null,
    Autor varchar(255) not null,
    Sexo_Autor varchar(9) not null,
    Numero_Paginas INT not null,
    Editora varchar(255),
    Valor_Capa_Comum float not null,
    Valor_Kindle float not null,
    Ano_Publicacao int not null,
    primary key (Id)
);

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('Pai Rico, Pai Pobre', 'Robert T. Klyosaki', 'Masculino', '336', 'Alta Books', '61.53', '58.45', '2018');

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('Mindset', 'Carol S. Dweck', 'Feminino', '312', 'Objetiva', '38.99', '14.95', '2017');

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('Como fazer amigos e influenciar pessoas', 'Dale Carnegie', 'Masculino', '256', 'Sextante', '38.99', '33.24', '2019');

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('A Cabana', 'William P. Young', 'Masculino', '240', 'Arqueiro', '35.99', '17.90', '2008');

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', '408', 'Objetiva', '42.99', '29.90', '2012');

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('Código Limpo', 'Robert C. Martin', 'Masculino', '425', 'Alta Books', '91.99', '87.39', '2009');

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('Essencialismo', 'Greg McKeown', 'Masculino', '272', 'Sextante', '53.58', '33.24', '2015');

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', '176', 'Sextante', '32.86', '17.09', '2018');

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('Comece pelo Porquê', 'Simon Sinek', 'Masculino', '256', 'Sextante', '50.58', '24.90', '2018');

insert into Livraria.Livros(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_Publicacao) 
values ('O Alquimista', 'Paulo Coelho', 'Masculino', '206', 'Paralela', '24.70', '14.70', '2017');

select * from Livraria.Livros;

delete from Livraria.Livros where Id = 1;

