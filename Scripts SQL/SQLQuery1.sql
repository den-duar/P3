/*
Exemplo 1: Criar o banco de dados CLIENTES
especificando apenas o arquivo de dados (primário);
Exemplo 2: Criar o banco de dados VENDAS
especificando os arquivos de dados e log (primário e
log);
Exemplo 3: Criar o banco de dados PRODUTOS
especificando o arquivo primário, 3 arquivos secundários
e 4 arquivos de log (primário, 3 secundários e 4 log);
*/

drop database primeirobd;

create database primeirobd;

---------------------------------------------------------------------
drop database teste_bd;

create database teste_bd
	ON (NAME = teste_dat,
	FILENAME = 'D:\SQLSV\teste_bd.mdf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5)
	LOG ON
	(NAME = teste_log,
	FILENAME = 'D:\SQLSV\teste_bd.ldf',
	SIZE = 10,
	MAXSIZE = 50,
	FILEGROWTH = 10)

-----------------------------------------------------
drop database clientes;

create database clientes
	ON (NAME = clientes_dat,
	FILENAME = 'D:\SQLSV\clientes_bd.mdf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5)

-----------------------------------------------------
drop database vendas;

create database vendas
	ON (NAME = vendas_dat,
	FILENAME = 'D:\SQLSV\vendas_bd.mdf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5)
	LOG ON (NAME = vendas_log,
	FILENAME = 'D:\SQLSV\vendas_bd.ldf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5)

--------------------------------------------
drop database produtos;

create database produtos
	ON (NAME = produtos1_dat,
	FILENAME = 'D:\SQLSV\produtos1_bd.mdf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5),
	(NAME = produtos2_dat,
	FILENAME = 'D:\SQLSV\produtos2_bd.ndf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5),
	(NAME = produtos3_dat,
	FILENAME = 'D:\SQLSV\produtos3_bd.ndf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5),
	(NAME = produtos4_dat,
	FILENAME = 'D:\SQLSV\produtos4_bd.ndf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5)
	LOG ON (NAME = produtos1_log,
	FILENAME = 'D:\SQLSV\produtos1_bd.ldf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5),
	(NAME = produtos2_log,
	FILENAME = 'D:\SQLSV\produtos2_bd.ldf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5),
	(NAME = produtos3_log,
	FILENAME = 'D:\SQLSV\produtos3_bd.ldf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5),
	(NAME = produtos4_log,
	FILENAME = 'D:\SQLSV\produtos4_bd.ldf',
	SIZE = 5,
	MAXSIZE = 20,
	FILEGROWTH = 5)
