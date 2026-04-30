-- Consulta 8: Recupere os nomes dos produtos que estão em menos de 20 pedidos

select 
  produtos.id_produto, produtos.nome, count(*) as qtde_pedidos
from 
  itens_de_pedido join produtos on itens_de_pedido.id_produto_fk = produtos.id_produto
group by 
  id_produto_fk
having 
  qtde_pedidos < 20
order by 
  qtde_pedidos desc;

/*
Resultado: 

id_produto -> 10
nome -> Tiramisu
qtde_pedidos -> 19

id_produto -> 20
nome -> Salada de Frutas
qtde_pedidos -> 14

id_produto -> 2
nome -> Capuccino
qtde_pedidos -> 13

id_produto -> 31
nome -> Lasanha à Bolonhesa
qtde_pedidos -> 1

*/
