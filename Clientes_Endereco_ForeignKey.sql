create database Farmacia;

use Farmacia;

create table Clientes(
	IdClientes int primary key auto_increment,
    Nome varchar(255) not null,
    DataNascimento date not null,
    Telefone varchar(15) not null
);

create table Endereco(
	IdEndereco int primary key auto_increment,
    Logradouro varchar(255) not null,
    Numero varchar(6),
    Cidade varchar(255) not null
);

create table Perfis(
	IdPerfis int primary key auto_increment,
    ClientesFk int,
    EnderecoFk int,
    foreign key (ClientesFk) references Clientes(IdClientes),
    foreign key (EnderecoFk) references Endereco(IdEndereco)
);

insert into Clientes(Nome, DataNascimento, Telefone) 
values ('Ronaldinho Gaúcho', '1978-12-05', '(12)98112-4574');

insert into Clientes(Nome, DataNascimento, Telefone) 
values ('Ronaldo Fenômeno', '1972-09-09', '(13)95274-1264');

insert into Clientes(Nome, DataNascimento, Telefone) 
values ('Cauly', '1988-02-27', '(73)97471-8496');

insert into Clientes(Nome, DataNascimento, Telefone) 
values ('Ávine', '1980-11-20', '(71)98264-2410');

insert into Clientes(Nome, DataNascimento, Telefone) 
values ('Fahel', '1969-05-01', '(71)97413-3639');

insert into Endereco(Logradouro, Numero, Cidade)
values ('Rua da Saudade', '712', 'Rio de Janeiro');

insert into Endereco(Logradouro, Numero, Cidade)
values ('Rua das Laranjeiras', '212', 'Belo Horizonte');

insert into Endereco(Logradouro, Numero, Cidade)
values ('Rua Machado Monteiro', '55', 'Jacobina');

insert into Endereco(Logradouro, Numero, Cidade)
values ('Rua José Alencar', '100', 'Salvador');

insert into Endereco(Logradouro, Numero, Cidade)
values ('Rua Borogodó', '07', 'Salvador');

insert into Perfis(ClientesFk, EnderecoFk)
values ('1', '1');

insert into Perfis(ClientesFk, EnderecoFk)
values ('2', '2');

insert into Perfis(ClientesFk, EnderecoFk)
values ('3', '3');

insert into Perfis(ClientesFk, EnderecoFk)
values ('4', '4');

insert into Perfis(ClientesFk, EnderecoFk)
values ('5', '5');

insert into Perfis(ClientesFk, EnderecoFk)
values ('1', '3');

SELECT Clientes.Nome as "Nome do Cliente", Endereco.Logradouro as "Endereço do Cliente" FROM Clientes
INNER JOIN Perfis ON Clientes.IdClientes = Perfis.ClientesFk
INNER JOIN Endereco ON Perfis.EnderecoFK = Endereco.IdEndereco
ORDER BY Clientes.Nome;
