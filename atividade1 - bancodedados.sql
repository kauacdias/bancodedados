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

-- Trazer todos os dados
select * from Livraria.Livros;

-- Trazer o nome do livro e nome da editora
select Livro, Editora from Livraria.Livros;

-- Trazer o nome do livro, editora e autores do sexo masculino;
select Livro, Editora, Autor from Livraria.Livros where Sexo_Autor = 'Masculino';

-- Trazer o nome do livro, número de páginas do livro e autores do sexo feminino
select Livro, Numero_Paginas, Autor from Livraria.Livros where Sexo_Autor = "Feminino";

-- Trazer o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017
select Autor, Editora, Ano_Publicacao from Livraria.Livros where Ano_Publicacao >= 2017;

-- Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Altas Books
select Autor from Livraria.Livros where Sexo_Autor = 'Masculino' and Editora = 'Sextante' or Editora = 'Alta Books';

-- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum
select Livro, Autor, Numero_Paginas, Editora, Ano_Publicacao, Valor_Capa_Comum from Livraria.Livros;


-- Trazer o nome do livro, autor, número de páginas e valor no Kindle
select Livro, Autor, Numero_Paginas, Valor_Kindle from Livraria.Livros;

-- Trazer o nome dos autores com livros publicados pela editora Sextante
select Autor, Editora from Livraria.Livros where Editora = 'Sextante';

-- Trazer o nome do livro, autores, valor com capa comum e valor no Kindle
select Livro, Autor, Valor_Capa_Comum, Valor_Kindle from Livraria.Livros;