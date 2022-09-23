--String

select codigo,nome from funcionario where nome like 'M%' order by nome asc

select codigo, nome from funcionario where nome like '%silva' order by nome asc

select codigo, nome from funcionario where nome like '%costa%'

select codigo, nome from funcionario where nome like 'Mar_a %' order by nome asc

select codigo, nome from funcionario where nome like 'Mar[i-t]a %'

select codigo, nome from cliente where codigo not like '[AC]%' order by codigo asc

select codigo, nome from cliente where codigo like '_a%'

select codigo, nome from funcionario where obs like '%bacharelado%'

--Condições compostas

select codigo, nome, tipo, fone,fax from cliente where tipo like 'j' and fax is not null order by nome asc

select * from produto where quantest > 100 or custo <= 10

select codigo, nome, salario, year(getdate()) - year(datanasc) as 'idade' from funcionario where sexo = 'm' and salario > 1000 and year(getdate()) - year(datanasc) between 25 and 60

select * from produto where (tipo in (1,2,5) and quantest >= 10) or (venda > 50 and tipo not in (1,4,6))

--Funções de agregação

select count(*) from cliente

select count(*) from pedido where via = 'a'

select count(*) from funcionario where email is not null

select distinct count(distinct cidade) from cliente

select distinct count(distinct vendedor) from pedido

select sum(salario) from funcionario

select sum(salario)*1.32 from funcionario where setor in ('COV','MKT')

select sum(frete) from pedido where vendedor in (2,6,8,10) and year(datapedid) = 1997

select avg(salario) from funcionario

select avg(venda) from produto where tipo = 1

select avg(year(getdate()) - year(datanasc)) from funcionario where sexo = 'f' and setor = 'COV'

select avg(salario) from funcionario where salario between 400 and 800 and estcivil not in ('C', 'V')

select max(venda) from produto

select min(datanasc) from funcionario where sexo = 'm'

select max(salario) from funcionario where sexo = 'f'

select min(custo) from produto where tipo = 1