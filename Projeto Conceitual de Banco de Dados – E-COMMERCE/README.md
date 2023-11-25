<div style="border: 0px solid #00f; padding: 10px; display: flex; justify-content: center;">
    <div style="box-shadow: 3px 3px 5px #888; display: flex; align-items: center; text-align: center; font-family: 'Verdana', sans-serif;">        
        <h1 style="margin: 0; text-shadow: 2px 2px 3px #888;">Formação Java Developer</h1>
    </div>
</div>

<br>
<div style="border: 0px solid #00f; padding: 10px; display: flex; align-items: center; justify-content: center; text-align: center; font-family: 'Lato', sans-serif;">
    <h2 style="margin: 0; text-shadow: 2px 2px 3px #888; font-family: 'Helvetica', sans-serif; text-decoration: none;">Desafio: Projeto Conceitual de Banco de Dados • E-COMMERCE</h2>
</div>


<div style="border: 0px solid #00f; padding: 10px; display: flex; align-items: center; justify-content: center; text-align: center;">
    <div style="display: flex; align-items: center; justify-content: center;">
               <h4 style="margin: 0; text-shadow: 2px 2px 3px #888; font-family: 'Raleway', sans-serif;">I ❤️ Front-End Development!</h4>
    </div>
</div>


<h3>Encontre-me</h3> :handshake:

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

<h3>Menu</h3>

- [Descrição do Projeto :scroll:](#descrição-do-projeto-scroll)
- [Cliente :writing_hand:](#cliente-writing_hand)
- [Fornecedor :hammer_and_wrench:](#fornecedor-hammer_and_wrench)
- [Vendedor Terceiro :sparkles:](#vendedor-terceiro-sparkles)
- [Produto :footprints:](#produto-footprints)
- [Forma de Pagamento :footprints:](#forma-de-pagamento-footprints)
- [Forma de Pagamento por Cliente :footprints:](#forma-de-pagamento-por-cliente-footprints)
- [Pedido :footprints:](#pedido-footprints)
- [Pedido por Produto :footprints:](#pedido-por-produto-footprints)
- [Entrega :footprints:](#entrega-footprints)
- [Estoque :footprints:](#estoque-footprints)
- [Estoque por Produto :footprints:](#estoque-por-produto-footprints)
- [Disponibilizando Produtos :footprints:](#disponibilizando-produtos-footprints)
- [Licença :traffic_light:](#licença-traffic_light)
- [Agradecimentos :tada:](#agradecimentos-tada)

<div style="height: 2px; background-color: #0077B5;"></div>

###  Descrição do Projeto :scroll:
O projeto é um sistema de e-commerce que envolve clientes, fornecedores, vendedores terceiros, produtos, formas de pagamento, pedidos, entregas e gestão de estoque. Os clientes podem fazer pedidos de produtos que podem ser fornecidos por diferentes fontes, incluindo fornecedores e vendedores terceiros. As formas de pagamento oferecem opções variadas, e o sistema acompanha todo o processo, desde a compra até a entrega, garantindo uma gestão eficiente do estoque.

<div style="height: 1px; background-color: #0077B5;"></div>

### **Cliente** :writing_hand:

**Atributos** 

|IDCliente|Nome|CPF|
|---------|----|---|
|CNPJ|Endereço|Tipo de Cliente|

**Relacionamentos:**

- fk_Pedido_Cliente1:
    - Cliente pode fazer zero ou mais pedidos.
    - Cardinalidade: 0..n.
    
- fk_FormaPagamento_has_Cliente_Cliente1:
    - Cliente pode ter zero ou mais formas de pagamento.
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div>

### Fornecedor :hammer_and_wrench:

**Atributos**  

|IDFornecedor|RazãoSocial|Endereço|
|------------|-----------|--------|

**Relacionamentos:**

- fk_Produto_por_Fornecedor_Fornecedor1:
    - Fornecedor pode fornecer zero ou mais produtos.             
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div>

### Vendedor Terceiro :sparkles:

**Atributos**  

|IDVendedorTerceiro|RazãoSocial|Local|
|------------------|-----------|-----|

**Relacionamentos:**

- fk_VendedorTerceiro_has_Produto_VendedorTerceiro1:
    - Vendedor terceiro pode vender zero ou mais produtos.
    - Cardinalidade: 0..n.


<div style="height: 1px; background-color: #0077B5;"></div>

### Produto :footprints:

**Atributos**  

|IDProduto|Descrição|Categoria|Identificação|Valor|
|---------|---------|---------|-------------|-----|


**Relacionamentos:**

- fk_Pedido_has_Produto_Produto1: 
    - Produto pode estar em zero ou mais pedidos.
    - Cardinalidade: 0..n.

- fk_Produto_has_Fornecedor_Produto: 
    - Produto pertence a um único fornecedor. 
    - Cardinalidade: 1.

- fk_VendedorTerceiro_has_Produto_Produto1: 
    - Produto pode ser vendido por zero ou mais vendedores terceiros. 
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div>

### Forma de Pagamento :footprints:

**Atributos** 

|IDFormaPagamento|Descrição|NumeroCartao|
|----------------|---------|------------|
|DataVencimentoCartao|NomeTitularCartao|ContaBancaria|


**Relacionamentos:**

- fk_FormaPagamento_has_Cliente_FormaPagamento1: 
    - Forma de pagamento pode ser associada a zero ou mais clientes. 
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div>

### Forma de Pagamento por Cliente :footprints:

**Atributos**

|IDFormaPagamentoPorCliente|IDFormaPagamento|IDCliente|
|--------------------------|----------------|---------|

**Relacionamentos:**

- fk_FormaPagamento_has_Cliente_FormaPagamento1: 
    - Forma de pagamento pode ser associada a zero ou mais clientes. 
    - Cardinalidade: 0..n.

- fk_FormaPagamento_has_Cliente_Cliente1: 
    - Cliente pode ter zero ou mais formas de pagamento. 
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div>

### Pedido :footprints:

**Atributos** 

|IDPedido|IDCliente|DataPedido|Status|Frete|
|--------|---------|----------|------|-----|


**Relacionamentos:**

- fk_Pedido_Cliente1: 
    - Pedido é feito por um único cliente. 
    - Cardinalidade: 1.

- fk_Pedido_has_Produto_Pedido1: 
    - Pedido pode ter zero ou mais produtos. 
    - Cardinalidade: 0..n.

- fk_Entrega_Pedido1: 
    - Pedido pode ter zero ou mais entregas. 
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div>

### Pedido por Produto :footprints:

**Atributos**  

|IDPedidoProduto|IDPedido|IDProduto|Quantidade|
|---------------|--------|---------|----------|

**Relacionamentos:**

- fk_Pedido_has_Produto_Produto1: 
    - Produto pode estar em zero ou mais pedidos. 
    - Cardinalidade: 0..n.

- fk_Pedido_has_Produto_Pedido1: 
    - Pedido pode ter zero ou mais produtos. 
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div>

### Entrega :footprints:

**Atributos**  

|IDEntrega|IDPedido|IDCliente|Data|Status|CodigoRastreio|Endereco|
|---------|--------|---------|----|------|--------------|--------|


**Relacionamentos:**

- fk_Entrega_Pedido1: 
    - Entrega está associada a um único pedido. 
    - Cardinalidade: 1.

<div style="height: 1px; background-color: #0077B5;"></div>

### Estoque :footprints:

**Atributos**  

|IDEstoque|Local|
|---------|-----|

**Relacionamentos:**

- fk_Estoque_has_Produto_Estoque1: 
    - Estoque pode ter zero ou mais produtos. 
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div>

### Estoque por Produto :footprints:

**Atributos** 

|IDEstoquePorProduto|IDEstoque|
|-------------------|---------|
|IDProduto|Quantidade|


**Relacionamentos:**

- fk_Estoque_has_Produto_Produto1: 
    - Produto pode estar em zero ou mais estoques. 
    - Cardinalidade: 0..n.

- fk_Estoque_has_Produto_Estoque1: 
    - Estoque pode ter zero ou mais produtos. 
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div>

### Disponibilizando Produtos :footprints:

**Atributos**

|IDDisponibilizandoProdutos|IDProduto|
|--------------------------|---------|
IDFornecedor|Descrição|

**Relacionamentos:**

- fk_Produto_por_Fornecedor_Fornecedor1: 
    - Fornecedor pode disponibilizar zero ou mais produtos. 
    - Cardinalidade: 0..n.

<div style="height: 1px; background-color: #0077B5;"></div><p>

Copyright © 2023 / RenatoMor

<div style="height: 1px; background-color: #0077B5;"></div>

### Licença :traffic_light:
Este projeto está licenciado sob a Licença consulte o arquivo 
 [MIT](https://opensource.org/licenses/MIT).

<div style="height: 1px; background-color: #0077B5;"></div>

### Agradecimentos :tada:
Digital Innovation One: Pela oportunidade de aprendizado e formação em Java.

JetBrains: Pela excelente IDE IntelliJ IDEA.

