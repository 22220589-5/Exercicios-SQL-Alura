-- Mostre a quantidade de vendas por ano

select year(data_venda) as Ano, count(id_venda) as Quantidade from vendas
group by Ano
order by Ano;

/*
Resultado:
Ano - Quantidade
2020 - 9132
2021 - 13623
2022 - 18071
2023 - 9174
*/
