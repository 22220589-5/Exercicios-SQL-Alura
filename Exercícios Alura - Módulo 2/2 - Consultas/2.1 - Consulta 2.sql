-- Consulta 2: Busque o ID do pedido e o ID do cliente dos pedidos onde o status esteja como entregue

select 
  id_pedido, id_cliente_fk, status_pedido 
from 
  pedidos 
where 
  status_pedido = 'Entregue';
