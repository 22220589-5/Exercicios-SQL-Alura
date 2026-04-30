-- Consulta 11 (extra): mostrar o quanto foi pedido (quantidade) de cada produto em ordem decrescente

select 
  produtos.id_produto, produtos.nome, sum(itens_de_pedido.quantidade) as quantidade_total
from 
  itens_de_pedido right join produtos on itens_de_pedido.id_produto_fk = produtos.id_produto
group by 
  itens_de_pedido.id_produto_fk
order by 
  quantidade_total desc;

-- Tirando a prova real:
select sum(quantidade) from itens_de_pedido where id_produto_fk = 2;
