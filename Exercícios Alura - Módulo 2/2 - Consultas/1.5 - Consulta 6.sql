-- Consulta 6: Liste os produtos que nunca foram pedidos

select produtos.id_produto, produtos.nome 
from itens_de_pedido right join produtos on itens_de_pedido.id_produto_fk = produtos.id_produto
where itens_de_pedido.id_pedido_fk is null;

/*
Resultado: Arroz Carreteiro (id = 12)
*/
