-- Consulta 02 - Quantos produtos foram vendidos no ano de 2022?

select
	count(vendas.id_venda) as Quantidade_Vendas_2022
from 
	produtos join itens_venda on produtos.id_produto = itens_venda.id_produto_fk
    join vendas on vendas.id_venda = itens_venda.id_venda_fk
where
	year(vendas.data_venda) = '2022';
    
-- Resultado: 54221 produtos vendidos em 2022
