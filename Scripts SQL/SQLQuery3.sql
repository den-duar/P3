/*
Criar o banco de dados academia
Exemplo 1: Criar a tabela aluno, com os campos:
matricula*, nome*, data de nascimento*, email, cpf*, celular*
Exemplo 2: Criar a tabela mensalidade, com os campos:
descrição*, valor*, característica*
Exemplo 3: Criar a tabela academia, com os campos:
razão social*, cnpj*, endereço*, cidade*, estado*, telefone.
Exemplo 4: Criar a tabela professor, com os campos:
código*, nome*, data de nascimento*, email, cpf*, celular* e
cref*
Exemplo 5: Criar a tabela ficha, com os campos: nome do
aluno*, nome do professor*, exercício*, repetições* e peso
*/

create database academia

use academia


create table aluno(
	matricula int identity(0,1) primary key not null,
	nome varchar(70) not null,
	dt_nascimento smalldate not null,
	email varchar(70) null,
	cpf varchar(11) not null,
	celular varchar(11) not null)

create table mensalidade(
	descricao varchar(255) not null,
	valor smallmoney not null,
	caracteristica varchar(255) not null)

create table academia(
	razao_social varchar (50) not null,
	cnpj varchar(14) not null primary key,
	endereco varchar(70) not null,
	cidade varchar(50) not null,
	estado char(2) not null,
	telefone varchar (11) null)

create table professor(
	cod tinyint identity(0,1) not null,
	nome varchar(70) not null,
	dt_nascimento smalldatetime not null,
	email varchar(70) null,
	cpf varchar(11) not null,
	celular varchar(11) not null,
	cref varchar(10) not null primary key)

create table ficha(
	nome_aluno varchar(70) not null,
	nome_professor varchar(70) not null,
	exercicio varchar(50) not null,
	repeticoes tinyint not null,
	peso tinyint null)

