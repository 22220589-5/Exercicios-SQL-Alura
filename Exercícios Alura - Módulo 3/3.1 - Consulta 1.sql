-- Mostre a quantidade de linhas por tabela de todas as tabelas

SELECT COUNT(*) as Quantidade, 'Categorias' as Tabela FROM categorias
UNION ALL
SELECT COUNT(*) as Quantidade, 'Clientes' as Tabela FROM clientes
UNION ALL
SELECT COUNT(*) as Quantidade, 'Fornecedores' as Tabela FROM fornecedores
UNION ALL
SELECT COUNT(*) as Quantidade, 'ItensVenda' as Tabela FROM itens_venda
UNION ALL
SELECT COUNT(*) as Quantidade, 'Marcas' as Tabela FROM marcas
UNION ALL
SELECT COUNT(*) as Quantidade, 'Produtos' as Tabela FROM produtos
UNION ALL
SELECT COUNT(*) as Quantidade, 'Vendas' as Tabela FROM vendas;

/*
Resultado:
Quantidade - Tabela
5 - Categorias
10000 - Clientes
10 - Fornecedores
150034 - ItensVenda
10 - Marcas
10000 - Produtos
50000 - Vendas
*/
