--ex1 
select 
	p.codigo as 'Cod pedido', 
	c.nome as 'Nome cliente' 
from pedido as p 
inner join cliente as c 
on c.codigo = p.cliente 
order by p.codigo

--ex2
select 
	f.codigo, 
	f.nome as 'Nome funcionario', 
	f.setor, s.nome as 'Nome setor' 
from funcionario as f
inner join setor as s 
on s.sigla = f.setor 
order by f.setor, f.nome

--ex3
select
	t.codigo as 'Cod tipo', 
	t.nome as 'Nome tipo', 
	count(p.tipo) as 'Qtd do tipo', 
	avg(p.venda) as 'Media venda', 
	avg(p.custo) as 'Media custo' 
from produto as p
inner join tipo as t 
on t.codigo = p.tipo 
group by t.nome, t.codigo

--ex4
select
	t.nome as 'Nome tipo',
	sum(p.quantest * p.venda) as 'Valor total'
from tipo as t
inner join produto as p
on t.codigo = p.tipo
group by t.nome
order by 'Valor total' desc

--ex5
select
	p.codigo as 'Cod pedido', 
	c.nome as 'Cliente',
	f.nome as 'Vendedor',
	p.via as 'Envio'
from pedido as p
inner join cliente as c
on c.codigo = p.cliente
inner join funcionario as f
on f.codigo = p.vendedor

--ex6
select
	s.nome as 'Setor',
	f.nome as 'Nome',
	f.salario + func.gratific as 'Salario total',
	func.nome as 'Funcao'
from funcionario as f
inner join setor as s
on f.setor = s.sigla
inner join funcao as func
on f.funcao = func.codigo
order by s.nome

--ex7
select
	f.nome as 'Funcionario',
	c.nome as 'Reside',
	ci.nome as 'Natural'
from funcionario as f
inner join cidade as c
on f.cidade = c.codigo
inner join cidade as ci
on f.natural = ci.codigo
order by f.nome asc

--ex8
select
	p.codigo as 'Cod pedido',
	c.nome as 'Nome cliente',
	f.nome as 'Nome vendedor',
	ci.nome as 'Cidade func',
	pa.nome as 'Pais func',
	s.nome as 'Setor funcionario',
	sum(i.preco + i.quant) as 'Valor total'	
from pedido as p
inner join cliente as c
on p.cliente = c.codigo
inner join funcionario as f
on p.vendedor = f.codigo
inner join setor as s
on f.setor = s.sigla
inner join itens as i
on i.pedido = p.codigo
inner join cidade as ci
on ci.codigo = f.cidade
inner join pais as pa
on pa.sigla = ci.pais
group by p.codigo, c.nome, f.nome, ci.nome, pa.nome, s.nome