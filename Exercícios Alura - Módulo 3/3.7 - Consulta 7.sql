-- Criação de uma tabela com todas as categorias, suas vendas acumuladas e o % que suas vendas representam do total

select
	Nome_Categoria,
    Quantidade_Vendas,
    concat(round(Quantidade_Vendas/(select count(*) from itens_venda)*100,2), '%') as Porcentagem
from (
	select
		categorias.nome_categoria as Nome_Categoria,
		count(*) as Quantidade_Vendas
	from
		categorias join produtos on categorias.id_categoria = produtos.id_categoria_fk
		join itens_venda on produtos.id_produto = itens_venda.id_produto_fk
		join vendas on vendas.id_venda = itens_venda.id_venda_fk
	group by
		Nome_Categoria
	order by
		Quantidade_Vendas desc
) as subq;

/*
Resultado:

Nome_Categoria - Quantidade_Vendas - Porcentagem

Eletrônicos - 43446 - 28.96%
Vestuáro - 41274 - 27.51%
Alimentos - 21922 - 14.61%
Esportes - 21782 - 14.52%
Livros - 21610 - 14.40%
*/
