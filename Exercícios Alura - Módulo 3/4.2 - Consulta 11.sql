-- Criação de uma tabela com 3 colunas:
-- Média de vendas dos anos 2020 e 2021
-- Vendas do ano 2022
-- Percentual de crescimento das vendas de 2022 em relação à média das vendas de 2020 e 2021

with Media_Vendas_Anteriores as (
-- Cálculo da média da quantidade de vendas dos anos 2020 e 2021
	with subq as (
		select 
			count(*) as Qtde_Vendas,
			year(data_venda) as Ano
		from 
			vendas
		where 
			month(data_venda) = '11' and year(data_venda) != '2022'
		group by
			Ano
		order by
			Ano
	) select avg(Qtde_Vendas) as Media_Qtde_Vendas from subq
), 
Vendas_Atual as (
-- Cálculo da quantidade de vendas do ano 2022
	with subq as (
		select 
			count(*) as Qtde_Vendas,
			year(data_venda) as Ano
		from 
			vendas
		where 
			month(data_venda) = '11' and year(data_venda) = '2022'
		group by
			Ano
		order by
			Ano
	) select Qtde_Vendas as Qtde_Vendas_Atual from subq
)
-- Select final com as 3 colunas necessárias referenciando os WITHs criados
select
	round(Media_Vendas_Anteriores.Media_Qtde_Vendas,2 ) as Media_Vendas_2020_e_2021,
    Vendas_Atual.Qtde_Vendas_Atual as Vendas_2022,
    concat(round((Vendas_Atual.Qtde_Vendas_Atual - Media_Vendas_Anteriores.Media_Qtde_Vendas)/Media_Vendas_Anteriores.Media_Qtde_Vendas*100, 2), '%') as Porcentagem
from
	Media_Vendas_Anteriores, Vendas_Atual
    
/*
Resultado:

Media_Vendas_2020_e_2021 - Vendas_2022 - Porcentagem
2049.50 - 3200 - 56.14%

*/
