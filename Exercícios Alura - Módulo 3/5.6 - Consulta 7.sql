-- Consulta 08 - Crie uma tabela comparando as vendas ao longo do tempo das duas categorias que mais venderam

with Categorias_Vendas as (
	select
		year(vendas.data_venda) as Ano,
		month(vendas.data_venda) as Mes,
        categorias.nome_categoria as Categoria,
        count(vendas.id_venda) as Qtde
	from
		categorias join produtos on categorias.id_categoria = produtos.id_categoria_fk
		join itens_venda on itens_venda.id_produto_fk = produtos.id_produto
		join vendas on vendas.id_venda = itens_venda.id_venda_fk
	where
		categorias.nome_categoria in ('Eletrônicos', 'Vestuário')
	group by
		Ano, Mes, Categoria
	order by
		Ano, Mes
)
select
	Ano,
    Mes,
    sum(case when Categoria = 'Eletrônicos' then Qtde else 0 end) as Eletronicos,
    sum(case when Categoria = 'Vestuário' then Qtde else 0 end) as Vestuario
from 
	Categorias_Vendas
group by
	Ano, Mes
order by
	Ano, Mes;

/*
Resultado:

Ano,Mes,Eletronicos,Vestuario
2020,1,884,867
2020,2,489,430
2020,3,489,421
2020,4,527,432
2020,5,749,694
2020,6,478,432
2020,7,460,467
2020,8,488,446
2020,9,488,462
2020,10,481,423
2020,11,1398,1404
2020,12,973,954
2021,1,1409,1398
2021,2,744,694
2021,3,706,674
2021,4,730,683
2021,5,1022,975
2021,6,724,699
2021,7,747,731
2021,8,743,694
2021,9,712,679
2021,10,679,675
2021,11,2228,2049
2021,12,1380,1349
2022,1,1914,1881
2022,2,890,865
2022,3,980,967
2022,4,911,918
2022,5,1445,1385
2022,6,959,932
2022,7,908,858
2022,8,914,911
2022,9,882,849
2022,10,1003,905
2022,11,2808,2609
2022,12,2061,1793
2023,1,1396,1359
2023,2,694,662
2023,3,765,765
2023,4,712,649
2023,5,1098,1019
2023,6,691,617
2023,7,649,692
2023,8,651,599
2023,9,691,649
2023,10,696,658

*/
