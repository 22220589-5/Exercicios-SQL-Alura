/*Contexto: Durante os nossos estudos, vamos trabalhar como analistas da Zoop Megastore,
 uma empresa de varejo, na qual você pode encontrar desde utensílios e eletros até produtos
 alimentícios. Para trabalhar com os dados da Zoop Megastore, precisamos conhecer a estrutura
 das tabelas para criar as melhores consultas para obter as informações necessárias.*/
 
-- Criação das 7 tabelas exemplo do Banco de Dados:

create table vendas (
	id_venda int auto_increment,
    primary key (id_venda),
    data_venda date,
    total_venda decimal(10,2),
    id_cliente_fk int,
    foreign key(id_cliente_fk) references clientes(id_cliente) on delete cascade
);

create table clientes (
	id_cliente int auto_increment,
    primary key(id_cliente),
    nome_cliente varchar(100),
    idade int,
    endereco varchar(150)
);

create table produtos(
	id_produto int auto_increment,
    primary key(id_produto),
    nome_produto varchar(100),
    preco decimal(10,2),
    id_categoria_fk int,
    foreign key(id_categoria_fk) references categorias(id_categoria) on delete cascade,
    id_marca_fk int,
    foreign key(id_marca_fk) references marcas(id_marca) on delete cascade,
    id_fornecedor_fk int,
    foreign key(id_fornecedor_fk) references fornecedores(id_fornecedor) on delete cascade,
    data_estoque date,
    status varchar(100)
);

create table fornecedores (
	id_fornecedor int auto_increment,
    primary key(id_fornecedor),
    nome_fornecedor varchar(150),
    contato_fornecedor varchar(15)
);

create table marcas (
	id_marca int auto_increment,
    primary key(id_marca),
    nome_marca varchar(150)
);

create table categorias (
	id_categoria int auto_increment,
    primary key(id_categoria),
    nome_categoria varchar(150)
);

create table itens_venda (
	id_venda_fk int,
    foreign key(id_venda_fk) references vendas(id_venda),
    id_produto_fk int,
    foreign key(id_produto_fk) references produtos(id_produto)
);
