-- Consulta 3: Retorne todos os produtos onde o preço seja maior ou igual a 10 e menor que 15

select * from produtos 
where preco >= 10 and preco < 15
order by preco desc;

-- Resultado: traz 4 produtos (id 31, 15, 19 e 32)
