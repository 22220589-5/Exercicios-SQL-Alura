-- Consulta 5: Recupere o nome do cliente que fez o primeiro pedido

select clientes.id_cliente, clientes.nome 
from pedidos join clientes on pedidos.id_cliente_fk = clientes.id_cliente
where pedidos.id_pedido = 1;

/*
Resultado: Ana Maria Silva (id = 10)
*/
