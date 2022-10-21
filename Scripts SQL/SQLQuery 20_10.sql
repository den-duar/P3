use SCP20222QUI

select sexo, count(*) as 'Quantidade' from funcionario group by sexo

select setor, count(*) as 'Funcionarios' , sum(salario) as 'Total salarios' from funcionario group by setor

select datapedid, count(*) as 'Pedido' from pedido group by datapedid

select tipo, count(*) as 'Produtos', sum(venda) as 'Valor total', avg(venda) as 'Media venda',sum(custo) as 'Custo total',
avg(custo) as 'Media custo' from produto group by tipo

select pedido, count(produto) as 'Qtd produtos' from itens group by pedido having count(produto) > 4

select year(datapedid) as 'Ano', count(*) as 'Ano pedido' from pedido group by year(datapedid) having count(*) > 100

--1. Exibir qual a quantidade mais vendida de um produto para cada pedido da empresa.
select pedido, max(quant) as 'Qtd produto no pedido' from itens group by pedido

--2. Exibir o total de salarios de cada setor da empresa que tenha este total > R$5.000,00
select setor, sum(salario) as 'Qtd' from funcionario group by setor having sum(salario) > 5000

/*
3. Exibir o preço médio de custo, o preço médio de venda e a diferença existente entre esses preços 
para cada tipo de produto existente na empresa.
*/
select tipo, avg(custo) as 'Media custo', avg(venda) as 'Media venda',(avg(venda)) - (avg(custo)) as 'Diferença medias' from produto group by tipo

--4. Exibir o código do produto e a quantidade de pedidos feitos para os produtos pedidos mais do que 20 vezes
select produto, count(pedido) as 'Qtd pedidos' from itens group by produto having count(pedido) > 20
