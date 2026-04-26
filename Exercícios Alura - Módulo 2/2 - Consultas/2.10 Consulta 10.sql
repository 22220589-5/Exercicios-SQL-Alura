-- Consulta 10: Recupere o nome e o ID do cliente que mais comprou(valor) no Serenatto

select 
	clientes.id_cliente, clientes.nome, sum(itens_de_pedido.preco_unitario) as compra_total
from 
	itens_de_pedido join pedidos on itens_de_pedido.id_pedido_fk = pedidos.id_pedido
	join clientes on pedidos.id_cliente_fk = clientes.id_cliente
group by 
	clientes.id_cliente, clientes.nome
order by 
	compra_total desc
LIMIT 1; -- LIMIT 1 mostra quem foi que mais gastou

-- Retirando a cláusula LIMIT 1, conseguimmos mostrar
-- o valor total gasto pelos clientes ordenando de forma decrescente com o desc
