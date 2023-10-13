create database Empresa;

use Empresa;

create table Funcionario(
	IdFuncionario int auto_increment primary key,
    Nome varchar(255) not null,
    Cargo varchar(255) not null,
    DataContratacao date not null,
    Salario float not null,
    DepartamentosFk int not null,
    foreign key (DepartamentosFk) references Departamentos(IdDepartamentos)
);

create table Dependentes(
	IdDependentes int primary key auto_increment,
    Nome varchar(255) not null,
    DataNascimento date not null,
    FuncionarioFk int not null,
    foreign key (FuncionarioFk) references Funcionario(IdFuncionario)
);

create table Departamentos(
	IdDepartamentos int auto_increment primary key,
    Nome varchar(255) not null
);

insert into Funcionario(Nome, Cargo, DataContratacao, Salario, DepartamentosFk)
values ('Luis Antonio', 'Recepcionista', '1999-10-15', '3500', '1');

insert into Funcionario(Nome, Cargo, DataContratacao, Salario, DepartamentosFk)
values ('Marcos Felipe', 'Gerente', '1987-05-25', '4000', '2');

insert into Funcionario(Nome, Cargo, DataContratacao, Salario, DepartamentosFk)
values ('Maria Felipa', 'Diretora', '1982-01-04', '5000', '3');

insert into Departamentos(Nome)
values ('RH');

insert into Departamentos(Nome)
values ('Coordenação');

insert into Departamentos(Nome)
values ('Diretoria');

insert into Dependentes(Nome, DataNascimento, FuncionarioFk)
values ('Lucas Antony', '2010-10-12', '1');

insert into Dependentes(Nome, DataNascimento, FuncionarioFk)
values ('Teresa', '2005-10-07', '2');

insert into Dependentes(Nome, DataNascimento, FuncionarioFk)
values ('Lúcia', '2019-01-02', '3');

insert into Dependentes(Nome, DataNascimento, FuncionarioFk)
values ('Joana', '2018-02-01', '3');

select Funcionario.Nome as "Funcionário", Departamentos.Nome as "Departamento", Dependentes.Nome as "Dependente do Funcionário" from Funcionario
INNER JOIN Dependentes ON FuncionarioFk = Funcionario.IdFuncionario
INNER JOIN Departamentos ON Funcionario.DepartamentosFk = IdDepartamentos
ORDER BY Funcionario.Nome;