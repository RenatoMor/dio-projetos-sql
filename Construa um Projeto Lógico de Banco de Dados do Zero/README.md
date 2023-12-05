<div style="border: 0px solid #00f; padding: 10px; display: flex; justify-content: center;">
    <div style="box-shadow: 3px 3px 5px #888; display: flex; align-items: center; text-align: center; font-family: 'Verdana', sans-serif;">        
        <h1 style="margin: 0; text-shadow: 2px 2px 3px #888;">Formação SQL Database Specialist</h1>
    </div>
</div>

<br>
<div style="border: 0px solid #00f; padding: 10px; display: flex; align-items: center; justify-content: center; text-align: center; font-family: 'Lato', sans-serif;">
    <h2 style="margin: 0; text-shadow: 2px 2px 3px #888; font-family: 'Helvetica', sans-serif; text-decoration: none;">Desafio: Construa um Projeto Lógico de Banco de Dados do Zero</h2>
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

- [Introdução](#introdução-footprints)
- [Estrutura do Banco de Dados](#estrutura-do-banco-de-dados-computer)
- [Entidades Principais](#entidades-principais-card_file_box)
- [Principais Tabelas](#principais-tabelas-zap)
- [Queries](#queries-shopping_cart)
- [Licença](#licença-traffic_light)
- [Agradecimentos](#agradecimentos-tada)

---


## Introdução :footprints:

#### Banco de Dados da Oficina Mecânica DIO

Bem-vindo ao Banco de Dados da Oficina Mecânica! Este projeto visa oferecer uma solução robusta para a gestão eficiente de uma oficina automotiva, proporcionando controle total sobre clientes, veículos, ordens de serviço, pagamentos, funcionários, equipes de manutenção, orçamentos e preços de serviços.

## Estrutura do Banco de Dados :computer:

O banco de dados foi desenvolvido com uma estrutura cuidadosamente planejada, composta por tabelas inter-relacionadas para representar as diversas entidades envolvidas no universo de uma oficina mecânica. Cada tabela foi projetada para armazenar informações específicas, permitindo um gerenciamento preciso e integrado de todas as atividades relacionadas.

## Entidades Principais :card_file_box:

### Cliente

Registra dados detalhados dos clientes, incluindo nome, CPF, endereço e informações de contato.

### Veículo 

Armazena informações sobre os veículos associados aos clientes, como marca, modelo, ano e placa.

### Ordem de Serviço 

Contém registros de todas as ordens de serviço realizadas, incluindo data, tipo de manutenção e vínculo com veículos.

### Pagamento 

Registra os pagamentos associados às ordens de serviço, incluindo o tipo de pagamento e o valor.

### Funcionários 

Mantém informações sobre os funcionários da oficina, incluindo nome e cargo.

### Equipe de Manutenção 

Lista as equipes de manutenção formadas por funcionários.

### Orçamento 

Armazena informações sobre os orçamentos fornecidos aos clientes.

### Tabela de Preços 

Define os preços dos serviços oferecidos pela oficina.

### Estoque 

Registra dados sobre o estoque de itens utilizados na manutenção.

## Principais Tabelas :zap:
    
### 1. Cliente 

Tabela de clientes apresenta o endereço com cado um dos atributos separado por coluna.
```sql
CREATE TABLE cliente (
    ID_cliente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(15) NOT NULL,
    prenome VARCHAR(3) NULL,
    sobrenome VARCHAR(20) NOT NULL,
    CPF CHAR(11) NOT NULL,
    contato VARCHAR(15) NOT NULL,
    logradouro VARCHAR(45) NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    UF VARCHAR(5) NOT NULL,
    PRIMARY KEY (ID_cliente),
    CONSTRAINT uk_CPF_cliente UNIQUE (CPF) 
);
```
### 2. Veículos 

A Tabela de veiculo apresenta todas as informações básicas de um automóvel. Contem uma chave estrangeira que referencia a tabela cliente e uma constraint que impede que duas placas sejam iguais.

```sql
CREATE TABLE veiculo (
	ID_veiculo INT NOT NULL AUTO_INCREMENT,
	ID_cliente INT NOT NULL,
	marca VARCHAR(20) NOT NULL,
	modelo VARCHAR(20) NOT NULL,
	ano INT NOT NULL,
	placa CHAR(7) NOT NULL,
	PRIMARY KEY (ID_veiculo),
	CONSTRAINT uk_placa_veiculo UNIQUE (placa),
    CONSTRAINT fk_veiculo_cliente FOREIGN KEY (ID_cliente) REFERENCES cliente(ID_cliente)
);
```
### 3. Ordem de Serviço

A Tabela de ordem de serviço apresenta o tipo de manutenção que será realizada no veículo, a data em que foi realizada e uma chave estrangeira que referencia a tabela veiculo.

```sql
CREATE TABLE ordem_servico (
  ID_ordem_servico INT NOT NULL AUTO_INCREMENT,
  ID_veiculo INT NOT NULL,
  data DATE NOT NULL,
  tipo_manutencao ENUM('Preventiva', 'Corretiva', 'Preditiva', 'Detectiva', 'Funilaria') NOT NULL, 
  PRIMARY KEY (ID_ordem_servico),
  CONSTRAINT fk_ordem_servico_veiculo FOREIGN KEY (ID_veiculo) REFERENCES veiculo (ID_veiculo)
);

```
### 4. Pagamento

Para finalizar os exemplos, a tabela de pagamento apresenta o tipo de pagamento que foi realizado, o valor e uma chave estrangeira que referencia a tabela ordem de serviço.

```sql
CREATE TABLE pagamento (
	ID_pagamento INT NOT NULL AUTO_INCREMENT,
    ID_ordem_servico INT NOT NULL,
	tipo_pagamento ENUM('Pix', 'Cartão', 'Espécie') NULL DEFAULT 'Cartão',
	valor DECIMAL(5,2) NOT NULL,	
	PRIMARY KEY (ID_pagamento),
	CONSTRAINT fk_pagamento_ordem_servico FOREIGN KEY (ID_ordem_servico) REFERENCES ordem_servico (ID_ordem_servico)
);
```
### Tabela de Pagamento

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
## Queries :shopping_cart:

 O sistema de BD Oficina Mecânica - DIO, foi projetado para simplificar a gestão de uma oficina, fornecendo consultas eficientes para diversas necessidades. As consultas envolvem diversas cláusulas, como LIKE, BETWEEN, JOIN, SUM, GROUP BY, CONCAT, HAVING e outras ferramentas permitindo desde a seleção de informações específicas até análises agregadas. Explore as consultas para obter uma visão abrangente dos dados, desde detalhes de veículos e clientes até análises financeiras e de estoque. A flexibilidade dessas consultas torna o banco de dados uma ferramenta poderosa para otimizar as operações da sua oficina mecânica.

 Através destas, é possível realizar análises detalhadas, como a soma do valor total pago por cada cliente ou a seleção de clientes com mais de um veículo. Explore as consultas e descubra como elas podem agilizar e aprimorar a administração do seu estabelecimento automotivo, proporcionando uma visão abrangente e pronta para a tomada de decisões assertivas.


### Filtra Informações de Ordens, Veículos e Clientes

```sql  
SELECT os.ID_ordem_servico, os.data, v.ID_veiculo, v.modelo, v.placa, CONCAT(c.nome, ' ', c.sobrenome) AS NomeCompleto, c.contato
FROM ordem_servico os
JOIN veiculo v ON os.ID_veiculo = v.ID_veiculo
JOIN cliente c ON v.ID_cliente = c.ID_cliente;
```
### Soma do Valor Total Pago por Cliente 

```sql
SELECT CONCAT(c.nome, ' ', c.sobrenome) AS NomeCompleto, SUM(p.valor) AS TotalPago
FROM cliente c
JOIN veiculo v ON c.ID_cliente = v.ID_cliente
JOIN ordem_servico os ON v.ID_veiculo = os.ID_veiculo
JOIN pagamento p ON os.ID_ordem_servico = p.ID_ordem_servico
GROUP BY c.nome, c.sobrenome;

```

### Clientes com Mais de um Veículo

```sql
SELECT c.nome, COUNT(v.ID_veiculo) AS total_veiculos
FROM cliente c
JOIN veiculo v ON c.ID_cliente = v.ID_cliente
GROUP BY c.ID_cliente
HAVING total_veiculos > 1;

```

## Licença :traffic_light:
Este projeto está licenciado sob a Licença consulte o arquivo 
 [MIT](https://opensource.org/licenses/MIT).


## Agradecimentos :tada:

Digital Innovation One: Pela oportunidade de aprendizado e formação em Java.

MySQL Community (GPL): Pelo excelente  sistema de gerenciamento de banco de dados relacional (RDBMS).

MySQL Workbench: Pela ferramenta de design visual, desenvolvimento e administração de banco de dados.

Copyright © 2023 / RenatoMor

