create database Revisao;

use Revisao;

create table Produtos (
	ProdutoID int auto_increment primary key,
    NomeProduto varchar(255) not null unique,
    Descricao varchar(255) not null,
    Preco float not null
    
);

create table Comentarios(
	ComentarioID int primary key,
    Autor varchar(255) not null,
    TextoComentario varchar(255) not null,
    DataComentario date not null,
    foreign key (ComentarioID) references Produtos(ProdutoID)
);

