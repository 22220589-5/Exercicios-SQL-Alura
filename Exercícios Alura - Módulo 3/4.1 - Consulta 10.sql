-- Criação de uma tabela com as vendas acumuladas por mês separadas por Ano nas colunas

select
	Mes,
    sum(case when Ano = '2020' then Qtde_Vendas else 0 end) as Ano_2020,
    sum(case when Ano = '2021' then Qtde_Vendas else 0 end) as Ano_2021,
    sum(case when Ano = '2022' then Qtde_Vendas else 0 end) as Ano_2022,
    sum(case when Ano = '2023' then Qtde_Vendas else 0 end) as Ano_2023
from (
	select 
		month(data_venda) as Mes,
		year(data_venda) as Ano,
		count(*) as Qtde_Vendas
	from 
		vendas
	group by 
		Mes, Ano
	order by
		Mes
) as subq
group by Mes;

/*
Resultado:
Mes,Ano_2020,Ano_2021,Ano_2022,Ano_2023

1,1070,1653,2252,1598
2,537,834,1100,824
3,549,813,1105,863
4,554,848,1110,773
5,877,1210,1678,1245
6,561,798,1104,751
7,554,870,1068,807
8,544,849,1046,740
9,575,823,1046,788
10,532,829,1110,785
11,1628,2471,3200,0
12,1151,1625,2252,0
*/
