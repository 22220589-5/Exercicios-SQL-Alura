-- Consulta 10 - Crie uma métrica mostrando a porcentagem de vendas a mais que a melhor categoria tem em relação a pior no ano de 2022

with Relacao_Categorias_2022 as (
-- Relação de vendas por categoria em 2022 em ordem decrescente de vendas
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

-- Calcula o % da categoria Eletrônicos (15675 vendas) em relação ao total de vendas 54221 -> 28.90%
Porcentagem_Eletronicos as (
	select 
		round((max(Qtde)/sum(Qtde))*100,2) as pe
	from 
		Relacao_Categorias_2022
),

-- Calcula o % da categoria Livros (7832 vendas) em relação ao total de vendas 54221 -> 14.44%
Porcentagem_Livros as (
	select 
		round((min(Qtde)/sum(Qtde))*100,2) as pl 
	from 
		Relacao_Categorias_2022
)

-- Mostra o Ano, a Categoria com mais vendas (Eletrônicos), a quantidade de vendas dessa categoria,
-- o % que ela representa do total, o % que a categoria com menos vendas (Livros) representa do total,
-- e a diferença % da categoria com mais vendas (Eletrônicos) da categoria com menos vendas (Livros)
select
	Ano,
    Categoria,
    Qtde,
    concat(Porcentagem_Eletronicos.pe, '%') as Porcentagem_Eletronicos,
    concat(Porcentagem_Livros.pl, '%') as Porcentagem_Livros,
    concat(Porcentagem_Eletronicos.pe - Porcentagem_Livros.pl, '%') as Porcentagem_A_Mais -- (28,9% - 14,44%) = 14,47% 
    -- Eletrônicos vendeu 14,47% a mais que livros com relação ao total de vendas em 2022
from
	Relacao_Categorias_2022, Porcentagem_Eletronicos, Porcentagem_Livros
where
	Qtde = (select max(Qtde) from Relacao_Categorias_2022);
    
/*
Resultado:

Ano - Categoria - Qtde - Porcentagem_Eletronicos - Porcentagem_Livros - Porcentagem_A_Mais
2022 - Eletrônicos - 15675 - 28.91% - 14,44% - 14,47%

*/
