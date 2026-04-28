-- Mostre as categorias de produtos e sua respectiva quantidade de venda no mês de novembro dividindo a análise por ano
select
	year(vendas.data_venda) as Ano,
    month(vendas.data_venda) as Mes,
    categorias.nome_categoria,
    count(produtos.id_produto) as Quantidade
from 
	itens_venda join vendas on itens_venda.id_venda_fk = vendas.id_venda
    join produtos on itens_venda.id_venda_fk = produtos.id_produto
    join categorias on produtos.id_categoria_fk = categorias.id_categoria
group by
	categorias.nome_categoria, Ano, Mes
 having
	Mes = '11'
order by
	Ano, Quantidade desc;
    
-- No ano de 2020 e 2021 Vestuário liderou as vendas. No ano de 2022 foi Eletrônicos
