-- Consulta 04 - Qual o primeiro ano disponível na base?

select
	min(year(data_venda)) as Primeiro_Ano
from 
	vendas;
    
-- Resultado: Ano de 2020
