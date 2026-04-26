-- Consulta 9: Liste os produtos e o ID do pedido que foram realizados pelo cliente "Pedro Alves" ou pela cliente "Ana Rodrigues".

select 
  produtos.nome, pedidos.id_pedido, clientes.nome 
from 
  pedidos join itens_de_pedido on pedidos.id_pedido = itens_de_pedido.id_pedido_fk
join 
  clientes on clientes.id_cliente = pedidos.id_cliente_fk
join 
  produtos on itens_de_pedido.id_produto_fk = produtos.id_produto
where 
  clientes.nome = 'Pedro Alves' or clientes.nome = 'Ana Rodrigues';
