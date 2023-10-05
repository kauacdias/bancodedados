create database Escola;

use Escola;

create table Cursos(
	CursoID int auto_increment primary key,
    NomeCurso varchar(255) not null,
    Professor varchar(255) not null,
    DataInicio date not null,
    DataFim date not null
);

create table Alunos(
	Matricula int auto_increment primary key unique,
    NomeAluno varchar(255) not null,
    DataNascimento date not null,
    Endereco varchar(255) not null,
    Telefone varchar(12) not null	
);

create table Inscricoes(
	InscricaoID int auto_increment primary key,
    MatriculaAluno int,
    CursoID int,
    foreign key (MatriculaAluno) references Alunos(Matricula),
    foreign key (CursoID) references Cursos(CursoID)
);

insert into Cursos(NomeCurso, Professor, DataInicio, DataFim)
values ('História', 'Mateus Aleluia', '2023-07-02', '2023-12-02');

insert into Cursos(NomeCurso, Professor, DataInicio, DataFim)
values ('Matemática', 'Marcos Aba', '2023-07-03', '2023-12-03');

insert into Cursos(NomeCurso, Professor, DataInicio, DataFim)
values ('Português', 'Jorge Portugal', '2023-07-04', '2023-12-04');

insert into Cursos(NomeCurso, Professor, DataInicio, DataFim)
values ('Ciências', 'Antônio Carrilho', '2023-07-05', '2023-12-05');

insert into Cursos(NomeCurso, Professor, DataInicio, DataFim)
values ('Geografia', 'Milton Santos', '2023-07-06', '2023-12-06');

insert into Alunos(NomeAluno, DataNascimento, Endereco, Telefone)
values ('Fito Marques', '2003-07-03', 'Rua Baianidade Nagô', '71981229487');

insert into Alunos(NomeAluno, DataNascimento, Endereco, Telefone)
values ('Tito Nunes', '2002-08-01', 'Rua Raiz de todo bem', '71984141252');

insert into Alunos(NomeAluno, DataNascimento, Endereco, Telefone)
values ('Pedro Cortes', '2003-02-14', 'Rua Shimbalaiê', '71912364512');

insert into Alunos(NomeAluno, DataNascimento, Endereco, Telefone)
values ('Gabriel Boric', '2003-04-30', 'Rua Maquina de Louco', '71987799414');

insert into Alunos(NomeAluno, DataNascimento, Endereco, Telefone)
values ('Jorginho do Pneu', '2004-10-10', 'Rua Arapuca', '71987782591');

insert into Inscricoes(MatriculaAluno, CursoID)
values ('1', '1');

insert into Inscricoes(MatriculaAluno, CursoID)
values ('2', '2');

insert into Inscricoes(MatriculaAluno, CursoID)
values ('3', '3');

insert into Inscricoes(MatriculaAluno, CursoID)
values ('4', '4');

insert into Inscricoes(MatriculaAluno, CursoID)
values ('5', '5');

SELECT Alunos.NomeAluno, Cursos.NomeCurso
FROM Alunos
JOIN Inscricoes ON Alunos.Matricula = Inscricoes.MatriculaAluno
JOIN Cursos ON Inscricoes.CursoID = Cursos.CursoID;