CREATE DATABASE BANCO;

USE BANCO;

CREATE TABLE CLIENTE(
	Cpf varchar(11) primary key,
    Nome varchar(255) not null,
    Endereco varchar(255),
    Telefone varchar(22) not null,
    Email varchar(255) not null unique
);

create table ContasBancarias(
	NumeroConta varchar(12) primary key,
    Agencia varchar(12) not null,
    TipoConta varchar(8) not null,
    Saldo float not null,
    CpfCliente varchar(11),
    Foreign key (CpfCliente) references Cliente(Cpf)
);

insert into Cliente(Cpf, Nome, Endereco, Telefone, Email) 
values ('07485214723', 'Leonardo', 'Rua Tamarindo Pereira', '71988451236', 'leonardo@senai.estudante.br');

insert into Cliente(Cpf, Nome, Endereco, Telefone, Email) 
values ('12345678901', 'Maria', 'Avenida das Rosas', '5555555555', 'maria@email.com');

insert into Cliente(Cpf, Nome, Endereco, Telefone, Email) 
values ('98765432109', 'Pedro', 'Rua dos Alpes', '3333333333', 'pedro@email.com');

insert into Cliente(Cpf, Nome, Endereco, Telefone, Email) 
values ('45678912345', 'Ana', 'Travessa das Flores', '7777777777', 'ana@email.com');

insert into ContasBancarias(NumeroConta, Agencia, TipoConta, Saldo, CpfCliente)
values ('12452874', '4141', 'Corrente', '125.00', '07485214723');
 
insert into ContasBancarias(NumeroConta, Agencia, TipoConta, Saldo, CpfCliente)
values ('98765432', '1234', 'Poupança', '500.00', '12345678901');

insert into ContasBancarias(NumeroConta, Agencia, TipoConta, Saldo, CpfCliente)
values ('45678901', '5678', 'Corrente', '1000.00', '98765432109');

insert into ContasBancarias(NumeroConta, Agencia, TipoConta, Saldo, CpfCliente)
values ('11112222', '9999', 'Poupança', '750.50', '45678912345');

select Cliente.Nome, ContasBancarias.Saldo from Cliente inner join ContasBancarias on Cliente.Cpf = ContasBancarias.CpfCliente;

select 
	C.Nome as "Nome do cliente", 
    CB.Saldo as "Saldo" 
    from Cliente C 
    inner join 
    ContasBancarias CB 
    on C.Cpf = CB.CpfCliente;


 