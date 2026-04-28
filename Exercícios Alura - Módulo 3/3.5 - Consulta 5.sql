-- Liste a relação de todos os fornecedores e a quantidade de vendas por ano considerando apenas o mês 11 (black friday)

select
	year(vendas.data_venda) as Ano, month(vendas.data_venda) as Mes,
	fornecedores.nome_fornecedor,
    count(*) as Quantidade
from
	fornecedores join produtos on fornecedores.id_fornecedor = produtos.id_fornecedor_fk
	join itens_venda on produtos.id_produto = itens_venda.id_produto_fk
	join vendas on vendas.id_venda = itens_venda.id_venda_fk
where
	month(vendas.data_venda) = '11'
group by
	Ano, Mes, fornecedores.nome_fornecedor
order by
	Ano desc, Mes, Quantidade desc;
