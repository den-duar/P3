select * from cliente
select * from funcionario
select * from produto

select codigo,nome,fone from cliente
select codigo,nome,estcivil,datanasc from funcionario
select codigo,nome,custo,venda from produto

select top 20 codigo,nome,fone from cliente
select top 10 percent codigo,nome,custo,venda from produto

select codigo,nome,fone,'N�o classificado' from cliente
select codigo,nome,custo,venda, 'N�m. Refer�ncia' from produto

select codigo,nome,fone,'N�o classificado' as 'Classifica��o' from cliente
select codigo,nome,custo,venda, 'N�m. Refer�ncia' as 'N�mero de Refer�ncia' from produto

select distinct cliente from pedido
select distinct bairro, cidade from funcionario
select distinct tipo from produto

select codigo, quantest, venda, (quantest*venda) as 'Valor total' from produto
select codigo,nome, salario, (salario*1.32) as 'Salario com 32% aumento' from funcionario

select codigo, nome as 'Produto', 
		quantest as 'Estoque real', estmin as 'Estoque m�nimo', 
		'Num. Ref.' as 'Refer�ncia' from produto

select * , venda-custo as 'Lucro' from produto

select *, venda*1.25 as 'Pre�o com acrescimo 25%' from produto

select distinct cidade from funcionario