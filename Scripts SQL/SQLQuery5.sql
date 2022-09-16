select * from cliente
select * from funcionario
select * from produto

select codigo,nome,fone from cliente
select codigo,nome,estcivil,datanasc from funcionario
select codigo,nome,custo,venda from produto

select top 20 codigo,nome,fone from cliente
select top 10 percent codigo,nome,custo,venda from produto

select codigo,nome,fone,'Não classificado' from cliente
select codigo,nome,custo,venda, 'Núm. Referência' from produto

select codigo,nome,fone,'Não classificado' as 'Classificação' from cliente
select codigo,nome,custo,venda, 'Núm. Referência' as 'Número de Referência' from produto

select distinct cliente from pedido
select distinct bairro, cidade from funcionario
select distinct tipo from produto

select codigo, quantest, venda, (quantest*venda) as 'Valor total' from produto
select codigo,nome, salario, (salario*1.32) as 'Salario com 32% aumento' from funcionario

select codigo, nome as 'Produto', 
		quantest as 'Estoque real', estmin as 'Estoque mínimo', 
		'Num. Ref.' as 'Referência' from produto

select * , venda-custo as 'Lucro' from produto

select *, venda*1.25 as 'Preço com acrescimo 25%' from produto

select distinct cidade from funcionario