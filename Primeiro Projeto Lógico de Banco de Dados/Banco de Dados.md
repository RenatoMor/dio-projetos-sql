<div style="border: 0px solid #00f; padding: 10px; display: flex; justify-content: center;">
    <div style="box-shadow: 3px 3px 5px #888; display: flex; align-items: center; text-align: center; font-family: 'Verdana', sans-serif;">        
        <h1 style="margin: 0; text-shadow: 2px 2px 3px #888;">Formação SQL Database Specialist</h1>
    </div>
</div>

<br>
<div style="border: 0px solid #00f; padding: 10px; display: flex; align-items: center; justify-content: center; text-align: center; font-family: 'Lato', sans-serif;">
    <h2 style="margin: 0; text-shadow: 2px 2px 3px #888; font-family: 'Helvetica', sans-serif; text-decoration: none;">Desafio: Primeiro Projeto Lógico de Banco de Dados</h2>
</div>


<div style="border: 0px solid #00f; padding: 10px; display: flex; align-items: center; justify-content: center; text-align: center;">
    <div style="display: flex; align-items: center; justify-content: center;">
               <h4 style="margin: 0; text-shadow: 2px 2px 3px #888; font-family: 'Raleway', sans-serif;">I ❤️ Front-End Development!</h4>
    </div>
</div>


<h3>Encontre-me :handshake: </h3> 


<p align="center">
    <a href="https://www.linkedin.com/in/renatomoreira-rm/" target="_blank">
        <img alt="LinkedIn" src="https://img.shields.io/badge/LinkedIn-0077B5?style=plastic&logo=linkedin&logoColor=white">
    </a>
    <a href="https://github.com/RenatoMor" target="_blank">
        <img alt="GitHub" src="https://img.shields.io/badge/GitHub-181717?style=plastic&logo=github&logoColor=white">
    </a>
    <a href="https://discord.com/channels/@me/1123380010779152444/" target="_blank">
        <img alt="Discord" src="https://img.shields.io/badge/Discord-5865F2?style=plastic&logo=discord&logoColor=white">
    </a>
</a>
    <a href="https://kovihq.slack.com/" target="_blank">
        <img alt="Slack" src="https://img.shields.io/badge/Slack-4A154B?style=plastic&logo=slack&logoColor=white">
    </a>
    <a href="https://www.instagram.com/renatomorspider/" target="_blank">
        <img alt="Instagram" src="https://img.shields.io/badge/Instagram-E4405F?style=plastic&logo=instagram&logoColor=white">
    </a>
    <a href="mailto:piano.tato@gmail.com" target="_blank">
        <img alt="Gmail" src="https://img.shields.io/badge/Gmail-EA4335?style=plastic&logo=gmail&logoColor=white">
    </a>
</p>
</p>
<br>

<div style="height: 2px; background-color: #0077B5;"></div>

<h3>MENU</h3> 

- [Banco de Dados E-COMMERCE :scroll:](#banco-de-dados-e-commerce-scroll)
- [Introdução :writing_hand:](#introdução-writing_hand)
- [Instruções de Uso :computer:](#instruções-de-uso-computer)
- [Entidades Principais :card_file_box:](#entidades-principais-card_file_box)
- [Tabelas de Cliente :client:](#tabelas-de-cliente-client)
- [Tabelas de Produto :package_box:](#tabelas-de-produto-package_box)
- [Tabela de Pagamento :credit_card:](#tabela-de-pagamento-credit_card)
- [Tabela de Pedido :shopping_cart:](#tabela-de-pedido-shopping_cart)
- [Tabela de Estoque :package_with_arrow:](#tabela-de-estoque-package_with_arrow)
- [Tabela de Fornecedor :factory:](#tabela-de-fornecedor-factory)
- [Tabela de Vendedor_Terceiro :seller:](#tabela-de-vendedor_terceiro-seller)
- [Tabela de Transportadora :truck:](#tabela-de-transportadora-truck)
- [Tabela de Entrega :package_delivery:](#tabela-de-entrega-package_delivery)
- [Tabela de Produto_Vendedor :seller_package:](#tabela-de-produto_vendedor-seller_package)
- [Tabela de Pedido_Produto](#tabela-de-pedido_produto)
- [Tabela de Estoque_Local](#tabela-de-estoque_local)
- [Tabela de Produto_Fornecedor](#tabela-de-produto_fornecedor)
- [Licença :traffic_light:](#licença-traffic_light)
- [Agradecimentos :tada:](#agradecimentos-tada)

---

### Banco de Dados E-COMMERCE :scroll:

Este script SQL apresenta o esquema de um banco de dados projetado para suportar um sistema de comércio eletrônico. As entidades incluídas abrangem clientes, produtos, pagamentos, pedidos, estoque, fornecedores, vendedores terceirizados, transportadoras, entregas e suas interações.

## Introdução :writing_hand:

O banco de dados E-COMMERCE foi concebido para atender às necessidades de um ambiente de comércio eletrônico, proporcionando uma estrutura sólida para gerenciar clientes, produtos, transações e logística. Este README fornece informações essenciais sobre a estrutura do banco de dados, facilitando sua compreensão e personalização de acordo com os requisitos específicos do projeto.

## Instruções de Uso :computer:

Para criar o banco de dados e suas tabelas, siga as instruções fornecidas no script SQL. Este script inclui definições de tabela, chaves primárias, chaves estrangeiras e outros elementos cruciais para garantir a integridade dos dados e o bom funcionamento do sistema.

## Entidades Principais :card_file_box:

O banco de dados abrange as seguintes entidades principais:

- **Clientes:** Cliente_PF e Cliente_PJ representam clientes pessoa física e pessoa jurídica, respectivamente. A tabela Cliente é uma tabela de união entre essas entidades.

- **Produtos:** Produtos são categorizados e avaliados, proporcionando uma ampla variedade de informações sobre cada item disponível no sistema.

- **Pagamentos e Pedidos:** Pagamentos são associados a clientes e utilizados em pedidos. Pedidos possuem informações detalhadas, incluindo status, data e valor total.

- **Estoque e Fornecedores:** Estoque localiza-se em diferentes locais e é associado a produtos. Fornecedores fornecem produtos em determinadas quantidades.

- **Vendedores Terceirizados:** Vendedores terceirizados estão conectados a produtos e podem fornecer uma alternativa para a aquisição de itens.

- **Transportadoras e Entregas:** Transportadoras movem produtos entre locais, e entregas mantêm o rastreamento dos itens desde o pedido até a entrega ao cliente.

O script também inclui tabelas de junção e associações, proporcionando flexibilidade para consultas complexas e análises de dados.

## Tabelas de Cliente :client:
    
1. **Cliente_PF:** Tabela de clientes pessoa física.
```sql
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
```
2. **Cliente_PJ:** Tabela de clientes pessoa jurídica.
```sql
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
```
3. **Cliente:** Tabela de união entre as tabelas Cliente_PF e Cliente_PJ.
```sql
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

```
## Tabelas de Produto :package_box:

```sql
CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    grupo_kids ENUM('Sim', 'Não') NULL DEFAULT 'Não',
    categoria ENUM('Eletrônico', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis') NOT NULL,
    avaliacao FLOAT DEFAULT 0,
    dimensao VARCHAR(10),
    PRIMARY KEY pk_id_produto (id_produto)
);
```
## Tabela de Pagamento :credit_card:

```sql
CREATE TABLE pagamento (
    id_cliente INT,
    id_pagamento INT AUTO_INCREMENT,
    tipo_pagamento ENUM('Boleto', 'Cartão', 'Pix'),
    limite FLOAT,
    PRIMARY KEY (id_pagamento),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
```
## Tabela de Pedido :shopping_cart:

```sql  
CREATE TABLE pedido (
    id_pedido INT AUTO_INCREMENT,
    id_pedido_cliente INT,
    id_pagamento INT NOT NULL,
    data_pedido DATE NOT NULL,
    status_pedido ENUM('Cancelado', 'Confirmado', 'Em processamento') DEFAULT 'Em processamento',
    descricao_pedido VARCHAR(255),
    id_transportadora INT NOT NULL,
    frete FLOAT DEFAULT 10,
    valor_total FLOAT NOT NULL,
    PRIMARY KEY pk_idpedido_pedido (id_pedido),
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_pedido_cliente) REFERENCES cliente(id_cliente) ON UPDATE CASCADE
);
```
## Tabela de Estoque :package_with_arrow:

```sql
CREATE TABLE estoque (
    id_estoque INT AUTO_INCREMENT NOT NULL,
    Localização VARCHAR(255),
    Quantidade INT DEFAULT 0,
    PRIMARY KEY pk_estoque (id_estoque)
);
```
## Tabela de Fornecedor :factory:

```sql
CREATE TABLE fornecedor (
    id_fornecedor INT AUTO_INCREMENT NOT NULL,
    razão_social VARCHAR(60),
    CNPJ CHAR(15) NOT NULL,
    contato CHAR(9),
    CONSTRAINT uk_cnpj_fornecedor UNIQUE (CNPJ),
    PRIMARY KEY pk_fornecedor (id_fornecedor)
);
```
## Tabela de Vendedor_Terceiro :seller:

```sql
CREATE TABLE vendedor_terceiro (
    id_vendedor_terceiro INT AUTO_INCREMENT PRIMARY KEY,
    razao_social VARCHAR(60) NOT NULL,
    nome_fantasia VARCHAR(60),
    endereco VARCHAR(255) NOT NULL,
    contato CHAR(11) NOT NULL,
    CNPJ CHAR(18) NOT NULL,
    CONSTRAINT uk_cnpj_vendedor UNIQUE (CNPJ),
    CONSTRAINT uk_cpf_vendedor UNIQUE (CPF)
);
```
## Tabela de Transportadora :truck:

```sql
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
```
## Tabela de Entrega :package_delivery:

```sql
CREATE TABLE entrega (
    codigo_rastreio VARCHAR(20) NOT NULL,
    id_pedido INT NOT NULL,
    id_transportadora INT NOT NULL,
    status_entrega ENUM('Entregue', 'Saiu para Entrega', 'Problema na Entrega', 'Devolvido ao Remetente', 'Chegou na Cidade de Destino', 'Em Trânsito', 'Despachado', 'Atrasado', 'NF Emitida', 'Em Processamento', 'Aguardando Processamento') DEFAULT 'Em Processamento',
    data_prevista DATETIME NOT NULL,
    data_entrega DATETIME NOT NULL,
    PRIMARY KEY (codigo_rastreio),
    CONSTRAINT uk_codigo_rastreio_entrega UNIQUE (codigo_rastreio),
    CONSTRAINT fk_entrega_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    CONSTRAINT fk_entrega_transportadora FOREIGN KEY (id_transportadora) REFERENCES transportadora(id_transportadora)
);
```
## Tabela de Produto_Vendedor :seller_package:

```sql
CREATE TABLE produto_vendedor (
    id_produto_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    id_vendedor_terceiro INT,
    id_produto INT,
    quantidade INT DEFAULT 1,
    CONSTRAINT fk_produto_vendedor_vendedor FOREIGN KEY (id_vendedor_terceiro) REFERENCES vendedor_terceiro(id_vendedor_terceiro),
    CONSTRAINT fk_produto_vendedor_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);
```
## Tabela de Pedido_Produto

```sql
CREATE TABLE pedido_produto(
    id_produto INT,
    id_pedido INT,
    quantidade INT DEFAULT 1,
    status_pedido ENUM('Disponível', 'Sem estoque') DEFAULT 'Disponível',
    PRIMARY KEY (id_produto, id_pedido),
    CONSTRAINT fk_produto_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    CONSTRAINT fk_produto_pedido FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);
```
## Tabela de Estoque_Local

```sql
CREATE TABLE estoque_local(
    id_produto INT,
    id_estoque INT,
    localizacao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_produto, id_estoque),
    CONSTRAINT fk_estoque_local_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    CONSTRAINT fk_estoque_local_estoque FOREIGN KEY (id_estoque) REFERENCES estoque(id_estoque)
);
```
## Tabela de Produto_Fornecedor

```sql
CREATE TABLE produto_fornecedor(
    id_fornecedor INT,
    id_produto INT,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_fornecedor, id_produto),
    CONSTRAINT fk_produto_fornecedor_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor),
    CONSTRAINT fk_produto_fornecedor_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);
```

## Licença :traffic_light:
Este projeto está licenciado sob a Licença consulte o arquivo 
 [MIT](https://opensource.org/licenses/MIT).


## Agradecimentos :tada:

Digital Innovation One: Pela oportunidade de aprendizado e formação em Java.

MySQL Community (GPL): Pelo excelente  sistema de gerenciamento de banco de dados relacional (RDBMS).

MySQL Workbench: Pela ferramenta de design visual, desenvolvimento e administração de banco de dados.

Copyright © 2023 / RenatoMor

