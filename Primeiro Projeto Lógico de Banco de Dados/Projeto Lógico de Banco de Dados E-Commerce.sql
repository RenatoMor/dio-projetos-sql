-- ===========================
-- BANCO DE DADOS E-COMMERCE 
-- ===========================
-- 1. Criar as entidades, atributos, constraints, etc.
-- 2. Criar tabela para os tipos de pagamento.
-- 3. Criar a entidade transportadora.
-- 4. terminar de implementar a tabela pagamento e criar a conexão com as tabelas necessárias e criar constraints relacionadas ao pagamento
-- ========================================================================================================================================
DROP DATABASE e_commerce;
CREATE DATABASE e_commerce;
drop table cliente_pf;
USE e_commerce;
ALTER TABLE cliente_pj 
MODIFY CNPJ CHAR(18) NOT NULL;
SELECT * FROM cliente_pf;
-- ---------------------------------------------------------------------------
-- 1. TABELA CLIENTE_PF
-- ---------------------------------------------------------------------------
CREATE TABLE cliente_pf (
    id_cliente_pf INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(10),
    prenome CHAR(3),
    sobrenome VARCHAR(20),	
    CPF CHAR(11) NOT NULL,
    RG VARCHAR(10) NOT NULL,
    endereco VARCHAR(255),
    PRIMARY KEY (id_cliente),
    CONSTRAINT unique_cpf_cliente_pf UNIQUE (CPF)
);
ALTER TABLE cliente_pf AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 2. TABELA CLIENTE_PJ
-- ---------------------------------------------------------------------------
CREATE TABLE cliente_pj (
    id_cliente INT AUTO_INCREMENT NOT NULL,
    nome_fantasia VARCHAR(60),
    razao_social VARCHAR(60) NOT NULL,
    CNPJ CHAR(15) NOT NULL,
    endereco VARCHAR(255),
    PRIMARY KEY (id_cliente),
    CONSTRAINT unique_cnpj_cliente_pj UNIQUE (CNPJ)
);
ALTER TABLE cliente_pj AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 3. TABELA CLIENTE
-- ---------------------------------------------------------------------------
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT,
    id_cliente_pf INT,
    id_cliente_pj INT,
    nome VARCHAR(50) NOT NULL,
    tipo ENUM('Cliente PF', 'Cliente_PJ') NOT NULL DEFAULT 'Cliente PF',
    PRIMARY KEY (id_cliente),
    CONSTRAINT fk_cliente_pf FOREIGN KEY (id_cliente_pf) REFERENCES cliente_pf(id_cliente),
    CONSTRAINT fk_cliente_pj FOREIGN KEY (id_cliente_pj) REFERENCES cliente_pj(id_cliente)
);
ALTER TABLE cliente AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 4. TABELA PRODUTO
-- ---------------------------------------------------------------------------
CREATE table produto(
		id_produto INT AUTO_INCREMENT,
        nome VARCHAR(255) NOT NULL,
        grupo_kids ENUM('Sim', 'Não') NULL DEFAULT 'Não',
        categoria ENUM('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') NOT NULL,
        avaliacao FLOAT DEFAULT 0,
        dimensao VARCHAR(10),  
        PRIMARY KEY pk_id_produto (id_produto)
);
ALTER TABLE produto AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 5. TABELA PAGAMENTO
-- ---------------------------------------------------------------------------
CREATE TABLE pagamento (
    id_cliente INT,
    id_pagamento INT AUTO_INCREMENT,
    tipo_pagamento ENUM('Boleto','Cartão','Pix'),
    limite FLOAT,
    PRIMARY KEY (id_pagamento),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
ALTER TABLE pagamento AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 6. TABELA PEDIDO
-- ---------------------------------------------------------------------------
CREATE TABLE pedido (
	id_pedido INT AUTO_INCREMENT,
    id_pedido_cliente INT,
    id_pagamento INT NOT NULL,
    data_pedido DATE NOT NULL,
    status_pedido ENUM('Cancelado','Confirmado','Em processamento') DEFAULT 'Em processamento',
    descricao_pedido VARCHAR(255),
    id_transportadora INT NOT NULL,
    frete FLOAT DEFAULT 10,
	valor_total FLOAT NOT NULL,    
    PRIMARY KEY pk_idpedido_pedido (id_pedido),
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_pedido_cliente) REFERENCES cliente(id_cliente)
	ON UPDATE CASCADE    
);	
ALTER TABLE pedido AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 7. TABELA ESTOQUE
-- ---------------------------------------------------------------------------
CREATE TABLE estoque (
	id_estoque INT AUTO_INCREMENT NOT NULL,
    Localização VARCHAR(255),
    Quantidade INT DEFAULT 0,
    PRIMARY KEY pk_estoque (id_estoque)
);
ALTER TABLE estoque AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 8. TABELA FORNECEDOR
-- ---------------------------------------------------------------------------
DESC fornecedor;
CREATE TABLE fornecedor (
	id_fornecedor INT AUTO_INCREMENT NOT NULL,
    razão_social VARCHAR(60),
    CNPJ CHAR(15) NOT NULL,     
    contato CHAR(9), 
    CONSTRAINT uk_cnpj_fornecedor UNIQUE (CNPJ),
    PRIMARY KEY pk_fornecedor (id_fornecedor)
);
ALTER TABLE fornecedor AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 9. TABELA VENDEDOR_TERCEIRO
-- ---------------------------------------------------------------------------
CREATE TABLE vendedor_terceiro (
	id_vendedor_terceiro INT AUTO_INCREMENT primary key,
    razao_social VARCHAR(60) NOT NULL,
    nome_fantasia VARCHAR(60),
    endereco VARCHAR(255) NOT NULL,
    contato CHAR(11) NOT NULL,
    CNPJ CHAR(18) NOT NULL,    
    CONSTRAINT uk_cnpj_vendedor UNIQUE (CNPJ),
    CONSTRAINT uk_cpf_vendedor UNIQUE (CPF)
);
ALTER TABLE vendedor_terceiro AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 10. TABELA TRANSPORTADORA
-- ---------------------------------------------------------------------------
CREATE TABLE transportadora (
    id_transportadora INT AUTO_INCREMENT,
    razao_social VARCHAR(80) NOT NULL,
    email VARCHAR(60) NOT NULL,
    endereco VARCHAR(80) NOT NULL,
    telefone CHAR(12) NOT NULL,
    CNPJ CHAR(18) NOT NULL,
    PRIMARY KEY (id_transportadora),
    CONSTRAINT uk_transportadora_cnpj UNIQUE (CNPJ)
);
ALTER TABLE transportadora AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 11. TABELA ENTREGA
-- ---------------------------------------------------------------------------
CREATE TABLE entrega (
    codigo_rastreio VARCHAR(20) NOT NULL,
    id_pedido INT NOT NULL,
    id_transportadora INT NOT NULL,
    status_entrega ENUM('Entregue','Saiu para Entrega', 'Problema na Entrega', 'Devolvido ao Remetente', 
    'Chegou na Cidade de Destino', 'Em Trânsito', 'Despachado', 'Atrasado', 'NF Emitida', 'Em Processamento',
    'Aguardando Processamento') DEFAULT 'Em Processamento',
    data_prevista DATETIME NOT NULL,
    data_entrega DATETIME NOT NULL,
    PRIMARY KEY (codigo_rastreio),
    CONSTRAINT uk_codigo_rastreio_entrega UNIQUE (codigo_rastreio),
    CONSTRAINT fk_entrega_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_entrega_transportadora FOREIGN KEY (id_transportadora) REFERENCES transportadora(id_transportadora)
);
ALTER TABLE entrega AUTO_INCREMENT=1;
-- ---------------------------------------------------------------------------
-- 12. TABELA PRODUTO_VENDEDOR
-- ---------------------------------------------------------------------------
CREATE TABLE produto_vendedor (
    id_produto_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    id_vendedor_terceiro INT,
    id_produto INT,
    quantidade INT DEFAULT 1,
    CONSTRAINT fk_produto_vendedor_vendedor FOREIGN KEY (id_vendedor_terceiro) REFERENCES vendedor_terceiro(id_vendedor_terceiro),
    CONSTRAINT fk_produto_vendedor_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);
-- ---------------------------------------------------------------------------
-- 13. TABELA PEDIDO_PRODUTO
-- ---------------------------------------------------------------------------
CREATE TABLE pedido_produto(
	id_produto INT,
    id_pedido INT,
    quantidade INT DEFAULT 1,	
    status_pedido ENUM('Disponível', 'Sem estoque') DEFAULT 'Disponível',
    PRIMARY KEY (id_produto, id_pedido),
    CONSTRAINT fk_produto_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    CONSTRAINT fk_produto_pedido FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);
-- ---------------------------------------------------------------------------
-- 14. TABELA ESTOQUE LOCAL
-- ---------------------------------------------------------------------------
CREATE TABLE estoque_local(
	id_produto INT,
    id_estoque INT,
    localizacao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_produto, id_estoque),
    CONSTRAINT fk_estoque_local_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    CONSTRAINT fk_estoque_local_estoque FOREIGN KEY (id_estoque) REFERENCES estoque(id_estoque)
);
-- ---------------------------------------------------------------------------
-- 15. TABELA PRODUTO_FORNECEDOR
-- ---------------------------------------------------------------------------
CREATE TABLE produto_fornecedor(
	id_fornecedor INT,
    id_produto INT,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_fornecedor, id_produto),
    CONSTRAINT fk_produto_fornecedor_fornecedor FOREIGN KEY  (id_fornecedor) REFERENCES fornecedor(id_fornecedor),
    CONSTRAINT fk_produto_fornecedor_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);
-- ---------------------------------------------------------------------------

SHOW TABLE STATUS;

select * from cliente_pf;
select * from cliente_pf;
select * from cliente;
select * from produto;
select * from pagamento;
select * from pedido;
select * from estoque;
select * from fornecedor;
select * from vendedor_terceiro;
select * from transportadora;
select * from entrega;
select * from produto_vendedor;
select * from pedido_produto;
select * from estoque_local;
select * from produto_fornecedor;

    




	






