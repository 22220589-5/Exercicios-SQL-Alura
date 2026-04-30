-- Consulta 09 - Calcule a porcentagem de vendas por categorias no ano de 2022

with Vendas_Categoria as (
-- Cria a visão com as categorias e suas vendas em 2022
	select
		year(vendas.data_venda) as Ano,
		categorias.nome_categoria as Categoria,
		count(vendas.id_venda) as Qtde
	from
		categorias join produtos on categorias.id_categoria = produtos.id_categoria_fk
		join itens_venda on itens_venda.id_produto_fk = produtos.id_produto
		join vendas on vendas.id_venda = itens_venda.id_venda_fk
	where
		year(vendas.data_venda) = '2022'
	group by
		Categoria
),
Vendas_Geral_2022 as (
-- Calcula todas as vendas em 2022 (54221)
	select
		count(vendas.id_venda) as Total_Vendas_2022
	from
		categorias join produtos on categorias.id_categoria = produtos.id_categoria_fk
		join itens_venda on itens_venda.id_produto_fk = produtos.id_produto
		join vendas on vendas.id_venda = itens_venda.id_venda_fk
	where
		year(vendas.data_venda) = '2022'
)
select
	Ano, 
    Categoria, 
    Qtde,
    -- Cria a nova coluna com o cálculo da porcentagem da categoria em relação ao total de vendas 2022:
    concat(round((Qtde/Total_Vendas_2022)*100,2), '%') as Porcentagem
from
	Vendas_Categoria, Vendas_Geral_2022;
    
/*
Resultado:

Ano - Categoria - Qtde - Porcentagem
2022 - Eletrônicos - 15675 - 28.91%
2022 - Vestuário - 14873 - 27.43%
2022 - Alimentos - 7952 - 14.67%
2022 - Livros - 7832 - 14.44%
2022 - Esportes - 7889 - 14.55%

*/
