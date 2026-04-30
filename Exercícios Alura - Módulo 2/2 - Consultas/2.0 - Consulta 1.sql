-- Consulta 1: Traga todos os dados da cliente Maria Silva

-- Mostrando os dados através do nome da cliente
select * from clientes where nome = 'Maria Silva';

-- Mostrando os dados através do id_cliente conhecido
select * from clientes where id_cliente = 1;

/*
Resultado:
id_cliente -> 1
nome -> Maria Silva
telefone -> 115551234
email -> maria.silva@email.com
endereco -> Rua das Flores, 123, Cidade A
*/
