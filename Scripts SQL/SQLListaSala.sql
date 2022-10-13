use SCP20222QUI

--1. Exibir quantos clientes fizeram pedido na empresa.
select count(distinct cliente) as 'Qtd clientes' from pedido

--2. Exibir quantos clientes existem na cidade de código igual a 17.
select count(*) as 'Moradores cidade 17' from cliente where cidade = 17

--3. Exibir quantas cidades estrangeiras estão cadastradas.
select count(*) as 'Cidades estrangeiras' from cidade where (pais not like 'BRA')

--4. Exibir quantos funcionários têm e-mail.
select count(*) as 'Funcionario com email' from funcionario where email is not null

--5. Exibir a quantas cidades a empresa atende.
select count(distinct cidade) as 'Cidades atendidas' from cliente

--6. Exibir a soma de todos os salários da empresa.
select sum(salario) as 'Total salarios' from funcionario

--7. Exibir o total geral do preço de venda de todos os produtos. TG = quantidade X preço de venda.
select sum(venda * quantest) as 'Tg' from produto

--8. Exibir a soma do valor do frete de todos os pedidos atendidos por via marítima.
select sum(frete) as 'Fretes maritimos' from pedido where via like 'M'

--9. Exibir a soma dos salários dos funcionários homens que não sejam vendedores (funções 10 e 11)
select sum(salario) 'Soma salario H n vendedores' from funcionario where sexo like 'M' and funcao not in (10, 11)

--10. Exibir a média de idade das funcionárias dos setores ‘COV’ e ‘RHM’.
select avg(year(getdate()) - year((datanasc))) as 'Media idade mulheres' from funcionario where setor in ('COV', 'RHM') and sexo = 'F'

--11. Exibir a média de salário das funcionárias com salário entre R$ 1.000,00 e R$ 2.000,00 que não sejam dos setores ‘PRS’ e ‘MKT’.
select avg(salario) as 'Media salario mulheres' from funcionario where salario between 1000 and 2000 and setor not in ('PRS', 'MKT') and sexo = 'F'

--12. Exibir a média de salário dos vendedores (funções = 10 e 11) que não sejam casados.
select avg(salario) as 'Media salario solteiros' from funcionario where funcao in (10, 11) and estcivil = 'S'

--13. Exibir o preço médio de venda dos produtos do tipo 1.
select avg(venda) as 'Media preços tipo 1' from produto where tipo = 1

--14. Exibir a data de nascimento da funcionária mais velha da empresa, com formato (DD/MM/YYYY).
select convert(varchar, max(datanasc), 103) as 'Data mais velha' from funcionario where sexo = 'F'

--15. Exibir quanto custou o produto mais caro da empresa.
select max(venda) as 'Produto mais caro' from produto

--16. Exibir a data do pedido mais recente, no formato DD/MM/YYYY.
select convert(varchar, max(datapedid), 103) as 'Pedido mais recente' from pedido

--17. Exibir em que mês foi feito o pedido mais antigo atendido por via aérea, exibir o mês por extenso em português.
set language portuguese
select datename(month,min(datapedid)) as 'Mes do pedido mais antigo' from pedido where via = 'A'