-- Consulta 05 e 06 - Qual o nome do fornecedor que mais vendeu no primeiro ano disponível na base? E quanto ele vendeu?

with Fornecedores_Vendas_2020 as (
	select
		year(vendas.data_venda) as Ano,
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
	Ano,
	Fornecedor,
    max(Qtde) as Vendas
from 
	Fornecedores_Vendas_2020;
    
-- Resultado: 
-- 2020 - HorizonDistributors - 5093
