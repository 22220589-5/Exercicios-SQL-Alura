-- Consulta 10 - Crie uma métrica mostrando a porcentagem de vendas a mais que a melhor categoria tem em relação a pior no ano de 2022

with Relacao_Categorias_2022 as (
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
	order by
		Qtde desc
),
-- Calcula a categoria com mais vendas em 2022 -> Eletrônicos = 15675
Maior_Venda_2022 as (select max(Qtde) as Maior from Relacao_Categorias_2022),
-- Calcula a categoria com menos vendas em 2022 -> Livros = 7832
Menor_Venda_2022 as (select min(Qtde) as Menor from Relacao_Categorias_2022)
select
	Ano,
    Categoria,
    Qtde,
    -- Calcula a porcentagem da maior venda em relação à menor ((15675 - 7832) / (15675)) * 100
    concat(round(((Maior-Menor)/Maior)*100,2), '%') as Porcentagem_Em_Relacao_A_Livros
from
	Relacao_Categorias_2022, Maior_Venda_2022, Menor_Venda_2022
where
	Qtde = Maior;
    
/*
Resultado:

Ano - Categoria - Qtde - Porcentagem
2022 - Eletrõnicos - 15675 - 50.04%

*/
