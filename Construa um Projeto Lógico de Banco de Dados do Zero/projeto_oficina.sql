-- =====================================================
-- BANCO DE DADOS OFICINA MECÂNICA
-- =====================================================
-- Criação do banco de dados:
CREATE DATABASE projeto_oficina;
USE projeto_oficina;
-- =====================================================
-- Table cliente
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Table veiculo
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Table ordem_servico
-- -----------------------------------------------------
CREATE TABLE ordem_servico (
  ID_ordem_servico INT NOT NULL AUTO_INCREMENT,
  ID_veiculo INT NOT NULL,
  data DATE NOT NULL,
  tipo_manutencao ENUM('Preventiva', 'Corretiva', 'Preditiva', 'Detectiva', 'Funilaria') NOT NULL, 
  PRIMARY KEY (ID_ordem_servico),
  CONSTRAINT fk_ordem_servico_veiculo FOREIGN KEY (ID_veiculo) REFERENCES veiculo (ID_veiculo)
);

-- -----------------------------------------------------
-- Table pagamento 
-- -----------------------------------------------------
CREATE TABLE pagamento (
	ID_pagamento INT NOT NULL AUTO_INCREMENT,
    ID_ordem_servico INT NOT NULL,
	tipo_pagamento ENUM('Pix', 'Cartão', 'Espécie') NULL DEFAULT 'Cartão',
	valor DECIMAL(5,2) NOT NULL,	
	PRIMARY KEY (ID_pagamento),
	CONSTRAINT fk_pagamento_ordem_servico FOREIGN KEY (ID_ordem_servico) REFERENCES ordem_servico (ID_ordem_servico)
);

-- -----------------------------------------------------
-- Table funcionarios
-- -----------------------------------------------------
CREATE TABLE funcionarios (
  ID_funcionarios INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  cargo VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_funcionarios)
);

-- -----------------------------------------------------
-- Table equipe_manutencao
-- -----------------------------------------------------
CREATE TABLE equipe_manutencao (
  ID_equipe_manutencao INT NOT NULL AUTO_INCREMENT,
  equipe VARCHAR(20) NOT NULL,
  PRIMARY KEY (ID_equipe_manutencao)
);

-- -----------------------------------------------------
-- Table orcamento
-- -----------------------------------------------------
CREATE TABLE orcamento (
  ID_orcamento INT NOT NULL AUTO_INCREMENT,
  aprovacao_cliente ENUM('aprovado', 'reprovado') NOT NULL,
  detalhes VARCHAR(255) NULL,
  valor DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (ID_orcamento)  
);

-- -----------------------------------------------------
-- Table tabela_precos
-- -----------------------------------------------------
CREATE TABLE tabela_precos (
  ID_tabela_precos INT NOT NULL AUTO_INCREMENT,
  servico VARCHAR(255) NOT NULL,
  preco DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (ID_tabela_precos)
);

-- -----------------------------------------------------
-- Table estoque
-- -----------------------------------------------------
CREATE TABLE estoque (
  ID_estoque INT NOT NULL AUTO_INCREMENT,
  local VARCHAR(45) NULL,
  quantidade INT NULL,
  item VARCHAR(50) NULL,
  PRIMARY KEY (ID_estoque)
);

-- -----------------------------------------------------
-- Table funcionarios_equipe
-- -----------------------------------------------------
CREATE TABLE funcionarios_equipe (
	ID_funcionarios INT NOT NULL,
	ID_equipe_manutencao INT NOT NULL,
    equipe VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_funcionarios, ID_equipe_manutencao) ,
	CONSTRAINT fk_funcionarios_e_equipes_funcionarios FOREIGN KEY (ID_funcionarios) REFERENCES funcionarios (ID_funcionarios),
	CONSTRAINT fk_funcionarios_por_equipe_manutencao FOREIGN KEY (ID_equipe_manutencao) REFERENCES equipe_manutencao (ID_equipe_manutencao)
);

-- -----------------------------------------------------
-- Table precos_e_orcamento
-- -----------------------------------------------------
CREATE TABLE precos_orcamento (
    ID_tabela_precos INT NOT NULL,
    ID_ordem_servico INT NOT NULL,
    PRIMARY KEY (ID_tabela_precos, ID_ordem_servico),  
    CONSTRAINT fk_tabela_precos_por_orcamento_tabela_precos FOREIGN KEY (ID_tabela_precos) REFERENCES tabela_precos (ID_tabela_precos),
    CONSTRAINT fk_tabela_precos_por_orcamento_ordem_servico FOREIGN KEY (ID_ordem_servico) REFERENCES ordem_servico (ID_ordem_servico)
);



