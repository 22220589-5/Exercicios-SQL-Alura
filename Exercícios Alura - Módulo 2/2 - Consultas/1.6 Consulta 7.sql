-- Consulta 7: Liste os nomes dos clientes que fizeram pedidos entre 2023-01-01 e 2023-12-31

select distinct clientes.nome from
clientes join pedidos on clientes.id_cliente = pedidos.id_cliente_fk
where pedidos.data_hora_pedido between '2023-01-01' and '2023-12-31';
