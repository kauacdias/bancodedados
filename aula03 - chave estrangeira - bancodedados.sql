-- criando banco de dados com nome "Empresa"
create database Empresa;

-- Selecionando banco de dados para inserir comandos.
use Empresa;

create table Clientes (
	Id int auto_increment primary key,
    Nome varchar(255) not null,
    Email varchar(255) not null unique,
    Telefone varchar(22) not null,
    Id_Endereco int,
    foreign key (Id_Endereco) references Enderecos(Id) 
);

create table Enderecos(
	Id int auto_increment primary key,
    Logradouro varchar(255) not null,
    Cep varchar(11) not null,
    Numero varchar(5),
    Complemento text,
    Cidade varchar(255)
);
