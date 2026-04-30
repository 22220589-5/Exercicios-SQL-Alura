-- Criação de uma tabela todas as marcas, suas vendas acumuladas e o % que suas vendas representam do total

select
	Marca,
    Quantidade_Vendas,
    concat(round(Quantidade_Vendas/(select count(*) from itens_venda)*100,2), '%') as Porcentagem
from (
	select
		marcas.nome_marca as Marca,
		count(*) as Quantidade_Vendas
	from
		marcas join produtos on marcas.id_marca = produtos.id_marca_fk
		join itens_venda on produtos.id_produto = itens_venda.id_produto_fk
		join vendas on vendas.id_venda = itens_venda.id_venda_fk
	group by
		Marca
	order by
		Quantidade_Vendas desc
) as subq;

/*
Resultado:

Marca - Quantidade_Vendas - Porcentagem

BluePeak - 32059 - 21.37%
Solar Flare - 22012 - 14.67%
ZenithWave - 21762 - 14.50%
GreenPulse - 10902 - 7.27%
NovaSphere - 10796 - 7.20%
EchoBloom - 10785 - 7.19%
CrystakCrest - 10714 - 7.14%
SilverStream - 10627 - 7.08%
InfinityAura - 10483 - 6.99%
AmberField - 9894 - 6.59%
*/
