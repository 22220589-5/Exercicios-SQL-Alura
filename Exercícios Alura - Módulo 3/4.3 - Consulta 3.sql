-- Consulta 03 - Qual a categoria que mais vendeu em 2022 ?

select
	categorias.nome_categoria as Categoria,
    count(vendas.id_venda) as Qtde_Vendas_2022
from 
	categorias join produtos on categorias.id_categoria = produtos.id_categoria_fk
    join itens_venda on itens_venda.id_produto_fk = produtos.id_produto
    join vendas on vendas.id_venda = itens_venda.id_venda_fk
where
	year(vendas.data_venda) = '2022'
group by
	Categoria
order by
	Qtde_Vendas_2022 desc;
    
/*
Resultado:

Categoria - Qtde_Vendas_2022

Eletrônicos - 15675
Vestuário - 14873
Alimentos - 7952
Esportes - 7889
Livros - 7832
*/
