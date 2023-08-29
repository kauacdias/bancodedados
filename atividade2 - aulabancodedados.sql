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

-- 1- Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;
select Livro, Autor, Valor_Kindle from Livraria.Livros where Valor_Kindle < 40;

-- 2 - Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;
select Livro, Autor from Livraria.Livros where Ano_Publicacao > 2017 and Editora = "Sextante" and Sexo_Autor = "Feminino";

-- 3 - Trazer o nome do livro e editora de livros com mais de 200 páginas;
select Livro, Editora from Livraria.Livros where Numero_Paginas > 200;

-- 4 - Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";
select Livro, Numero_Paginas, Autor from Livraria.Livros where Autor like 'C%';

-- 5 - Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;
select Autor, Editora, Ano_Publicacao from Livraria.Livros where Sexo_Autor = "Masculino" and Editora = "Alta Books";

-- 6 - Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;
select Livro, Autor, Numero_Paginas, Editora, Ano_Publicacao, Valor_Capa_Comum from Livraria.Livros where Valor_Capa_Comum > 50;

-- 7 - Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;
select Livro, Editora, Valor_Capa_Comum from Livraria.Livros where Autor like 'Nathalia%';

-- 8 - Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;
select Livro, Autor, Numero_Paginas from Livraria.Livros where Ano_Publicacao <=2017;

-- 9 - Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;
select Autor from Livraria.Livros where Editora = 'Sextante' and Numero_Paginas > 200;

-- 10 - Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;
select Livro, Autor, Valor_Capa_Comum from Livraria.Livros where Valor_Capa_Comum > 30 and Editora = 'Sextante';