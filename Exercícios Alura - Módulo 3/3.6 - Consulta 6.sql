-- Criação de uma tabela com os nomes dos fornecedores em colunas e a relação por mês e ano das vendas

select 
	Ano, 
    Mes,
    sum(case when Nome_Fornecedor = 'AstroSupply' then Quantidade else 0 end) as Quantidade_AstroSupply, -- ID 1
    sum(case when Nome_Fornecedor = 'HorizonDistributors' then Quantidade else 0 end) as Quantidade_HorizonDistributors, -- ID 2
    sum(case when Nome_Fornecedor = 'EchoLogistics' then Quantidade else 0 end) as Quantidade_EchoLogistics, -- ID 3
    sum(case when Nome_Fornecedor = 'CosmicConnections' then Quantidade else 0 end) as Quantidade_CosmicConnections, -- ID 4
    sum(case when Nome_Fornecedor = 'TerraTrade' then Quantidade else 0 end) as Quantidade_TerraTrade, -- ID 5
    sum(case when Nome_Fornecedor = 'PinnaclePartners' then Quantidade else 0 end) as Quantidade_PinnaclePartners, -- ID 6
	sum(case when Nome_Fornecedor = 'NebulaNetworks' then Quantidade else 0 end) as Quantidade_Nebula, -- ID 7
    sum(case when Nome_Fornecedor = 'OceanicOrigins' then Quantidade else 0 end) as Quantidade_OceanicaOrigins, -- ID 8
    sum(case when Nome_Fornecedor = 'SummitSolutions' then Quantidade else 0 end) as Quantidade_SummitSolutions, -- ID 9
    sum(case when Nome_Fornecedor = 'InfinityImports' then Quantidade else 0 end) as Quantidade_InfinityImports -- ID 10
from (
	select
		year(vendas.data_venda) as Ano, 
        month(vendas.data_venda) as Mes,
		fornecedores.nome_fornecedor as Nome_Fornecedor,
		count(*) as Quantidade
	from
		fornecedores join produtos on fornecedores.id_fornecedor = produtos.id_fornecedor_fk
		join itens_venda on produtos.id_produto = itens_venda.id_produto_fk
		join vendas on vendas.id_venda = itens_venda.id_venda_fk
	group by
		Ano, Mes, Nome_Fornecedor
	order by
		Ano, Mes
) as subq
group by Ano, Mes;
