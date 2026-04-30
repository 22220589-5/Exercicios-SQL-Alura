-- Consulta 07 - Quais as duas categorias que mais venderam no total de todos os anos ?

select
	categorias.nome_categoria as Categoria,
	count(vendas.id_venda) as Qtde
from
	categorias join produtos on categorias.id_categoria = produtos.id_categoria_fk
    join itens_venda on itens_venda.id_produto_fk = produtos.id_produto
    join vendas on vendas.id_venda = itens_venda.id_venda_fk
group by
	Categoria
order by
	Qtde desc
LIMIT 2;

/*
Resultado:

Caregoria - Qtde

Eletrônicos - 43446
Vestuário - 41274
*/
