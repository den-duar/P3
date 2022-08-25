create database aulaTabelas

use aulaTabelas

create table aluno(
	matricula varchar(10) 
		constraint pk_aluno primary key,
	nome varchar(50) not null,
	dt_nascimento varchar(10) not null,
	email varchar(50) null,
	cpf varchar (11) not null,
	celular varchar(11) not null)

create table professor(
	matricula varchar(10)
		constraint pk_professor primary key,
	nome varchar(100) not null,
	cpf varchar(11) not null
		constraint un_professor_cpf unique,
	celular varchar (11) not null)

create table cidade(
	codigo varchar(10)
		constraint pk_cidade primary key,
	nome varchar (50) not null)

create table pessoa(
	codigo varchar(10)
		constraint pk_pessoa primary key,
	cpf varchar(11)
		constraint un_pessoa_cpf unique,
	cidade varchar (10)
		constraint fk_pessoa_cidade foreign key
		references cidade(codigo))

create table funcionario(
	matricula varchar(10)
		constraint pk_funcionario primary key,
	nome varchar(50) not null,
	cpf varchar (11) not null
		constraint un_funcionario_cpf unique,
	nacionalidade varchar(50)
		constraint df_nacionalidade default 'Brasil')