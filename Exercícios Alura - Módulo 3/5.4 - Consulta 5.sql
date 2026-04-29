-- Consulta 05 - Qual o nome do fornecedor que mais vendeu no primeiro ano disponível na base?

with Fornecedores_Vendas_2020 as (
	select
		fornecedores.nome_fornecedor as Fornecedor,
		count(vendas.id_venda) as Qtde
	from 
		fornecedores join produtos on fornecedores.id_fornecedor = produtos.id_fornecedor_fk
		join itens_venda on itens_venda.id_produto_fk = produtos.id_produto
		join vendas on vendas.id_venda = itens_venda.id_venda_fk
	where
		year(vendas.data_venda) = '2020'
	group by
		Fornecedor
	order by
		Qtde desc
) 
select 
	Fornecedor,
    max(Qtde) as Vendas
from 
	Fornecedores_Vendas_2020;
