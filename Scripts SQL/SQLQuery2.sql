/*
Exemplo 1: Criar o banco de dados TESTE com 5Mb de
tamanho e em seguida adicionar mais 5Mb para dados.
Exemplo 2: Adicionar dois arquivos secundários de dados
de 5Mb.
Exemplo 3: Adicionar um arquivo de log com 5 Mb ao
banco de dados TESTE.
Exemplo 4: Remover do banco de dados TESTE o arquivo
de dados Teste_dat3.
Exemplo 5: Aumentar o tamanho do arquivo Teste_dat2 no
banco de dados TESTE para 20Mb.

Sintaxe:
DROP DATABASE <database_name> [,...n]

Eliminando um Banco de Dados

Exemplo 1: Eliminar o banco de dados TESTE;

Exemplo 2: Eliminar os banco de dados CLIENTES e
VENDAS;
*/

drop database teste

create database teste
	on (name = testedat,
	filename = 'D:\SQLSV\testedat.mdf',
	size = 5)

use teste

alter database teste
	modify file(name = testedat,
	filename = 'D:\SQLSV\testedat.mdf',
	size = 10)

alter database teste
	add file(name = testedat1,
	filename = 'D:\SQLSV\testedat1.ndf'),
	(name = testedat2,
	filename = 'D:\SQLSV\testedat2.ndf')

alter database teste
	add log file(name = testelog1,
	filename = 'D:\SQLSV\testelog1.ldf',
	size = 5)

alter database teste
	remove file testedat2

alter database teste
	modify file(name = testedat1,
	size = 20)