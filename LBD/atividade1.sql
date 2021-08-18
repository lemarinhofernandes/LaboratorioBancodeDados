DROP DATABASE IF EXISTS vendas;
CREATE DATABASE IF NOT EXISTS vendas;
USE vendas;
SHOW DATABASES;
SHOW TABLES;
CREATE TABLE IF NOT EXISTS clientes (
	id INT NOT NULL auto_increment,
    nome VARCHAR(100),
    endereco VARCHAR(200),
    cidade VARCHAR(50),
    cep CHAR(8),
    uf CHAR(2),
    cnpj CHAR(14) NOT NULL UNIQUE,
    ie varchar(30),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS vendedores (
	id INT NOT NULL auto_increment,
	nome VARCHAR(100),
    salario DECIMAL(10,2) NOT NULL,
    faixa_comissao ENUM('A', 'B', 'C'),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS pedidos(
	id INT NOT NULL AUTO_INCREMENT,
    prazo_entrega INT UNSIGNED NOT NULL,
    id_cliente INT NOT NULL, 
    id_vendedor INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores (id)
);

CREATE TABLE IF NOT EXISTS produtos (
	id int not null auto_increment,
    unidade int(2),
    descricao varchar(120),
    valor_unitario decimal(7,2),
    primary key (id)
);

CREATE TABLE IF NOT EXISTS itens_pedido (
	id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) references pedidos (id),
    FOREIGN KEY (id_produto) REFERENCES produtos (id)
);

INSERT INTO clientes VALUES (1151, "Dudu", "Samambaia Sul", "Brasilia", "72300603", "DF", "11111114511111", null);
INSERT INTO vendedores VALUES(1111, "Luis", 1000.22, "A");
INSERT INTO clientes VALUES(1, "Luis", "Brasilia", "DF", "12311654", "BR", "11111114511112", null);