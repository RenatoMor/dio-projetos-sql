<div style="border: 0px solid #00f; padding: 10px; display: flex; justify-content: center;">
    <div style="box-shadow: 3px 3px 5px #888; display: flex; align-items: center; text-align: center; font-family: 'Verdana', sans-serif;">        
        <h1 style="margin: 0; text-shadow: 2px 2px 3px #888;">Formação SQL Database Specialist</h1>
    </div>
</div>

<br>
<div style="border: 0px solid #00f; padding: 10px; display: flex; align-items: center; justify-content: center; text-align: center; font-family: 'Lato', sans-serif;">
    <h2 style="margin: 0; text-shadow: 2px 2px 3px #888; font-family: 'Helvetica', sans-serif; text-decoration: none;">Query: Primeiro Projeto Lógico de Banco de Dados</h2>
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

- [Query E-Commerce](#query-e-commerce)
- [Consultas Destacadas](#consultas-destacadas)
- [Query 1 :mag_right:](#query-1-mag_right)
- [Query 2 :mag_right:](#query-2-mag_right)
- [Query 3 :mag_right:](#query-3-mag_right)
- [Query 4 :mag_right:](#query-4-mag_right)
- [Query 5 :mag_right:](#query-5-mag_right)
- [Query 6 :mag_right:](#query-6-mag_right)
- [Query 7 :mag_right:](#query-7-mag_right)
- [Query 8 :mag_right:](#query-8-mag_right)
- [Query 9 :mag_right:](#query-9-mag_right)
- [Query 10 :mag_right:](#query-10-mag_right)
- [Query 11 :mag_right:](#query-11-mag_right)
- [Query 12 :mag_right:](#query-12-mag_right)
- [Query 13 :mag_right:](#query-13-mag_right)
- [Query 14 :mag_right:](#query-14-mag_right)
- [Query 15 :mag_right:](#query-15-mag_right)
- [Licença :traffic_light:](#licença-traffic_light)
- [Agradecimentos :tada:](#agradecimentos-tada)



## Query E-Commerce :snowflake:

Este repositório abriga o modelo de banco de dados e as consultas SQL relacionadas a um sistema de e-commerce. O projeto inclui a definição de entidades, atributos, relações, e consultas específicas que fornecem insights valiosos sobre a dinâmica do e-commerce. Cada consulta foi cuidadosamente elaborada para abordar diferentes aspectos do sistema, desde informações sobre clientes e pedidos até métricas de pagamento e avaliações de produtos.

Estrutura do Banco de Dados:

**Clientes:**
- Aborda tanto pessoas físicas quanto jurídicas.

**Produtos:** 
- Categorizados e avaliados.

**Pagamentos:** 
- Diversos métodos de pagamento.

**Pedidos:** 
- Detalhes sobre as transações realizadas.

**Estoque:** 
- Gerenciamento de produtos disponíveis.

**Fornecedores e Vendedores:** 
- Colaboradores externos.

## Consultas Destacadas

- Identificação de fornecedores em São Paulo.
- Análise da média de avaliação de produtos.
- Contagem de pedidos por cliente, separando pessoas físicas e jurídicas.
- Visualização de pedidos realizados dentro de um período específico.

Este conjunto de consultas oferece uma visão abrangente e estruturada do sistema, proporcionando uma base sólida para análises e tomadas de decisão no contexto de um negócio de comércio eletrônico.



## Query 1 :closed_book

**Exibindo Categoria dos pedidos dos Clientes PJ.** 

- A Consulta realiza uma junção interna **INNER JOIN** entre as tabelas cliente_pj e pedido, ligando-as através da condição id_cliente = id_pedido. O resultado inclui o campo nome da tabela cliente_pj, renomeado como "Razão_Social", e o campo descricao_pedido da tabela pedido, renomeado como "Categoria". Essa consulta fornece informações sobre os clientes Pessoa Jurídica (PJ) e as categorias associadas aos pedidos correspondentes, destacando a razão social e a descrição da categoria.
```sql
SELECT nome AS Razão_Social, descricao_pedido AS Categoria
FROM cliente_pj
INNER JOIN pedido ON id_cliente = id_pedido;
```
## Query 2  :green_book:

**Exibindo Endereço, renomear cabeçalho e Concatenar nome e sobrenome dos clientes PF do estado de Minas Gerais.**

- Essa consulta opera na tabela cliente_pf, buscando os registros cujo campo endereco contenha a **SUBSTRING** '%RJ%'. A função **CONCAT** é usada para combinar os campos nome e sobrenome, criando uma nova coluna chamada "Nome_Completo". O resultado final apresenta o "Nome_Completo" dos clientes Pessoa Física (PF) cujo endereço contenha a referência '%RJ%', além do campo endereco renomeado como "Endereço". Isso permite obter informações sobre clientes PF com endereços relacionados ao estado do Rio de Janeiro.

```sql
SELECT CONCAT(nome, ' ', sobrenome) AS Nome_Completo, endereco AS Endereço
FROM cliente_pf
WHERE endereco LIKE '%RJ%';
```
## Query 3 :blue_book:

**Exibindo Quantidade de Pagamento via Pix.** 

- Nesta consulta, a cláusula **COUNT(*)** é usada para contar o número total de registros na tabela pagamento onde o campo tipo_pagamento é igual a 'Pix'. A função **AS** é utilizada para renomear o resultado como "Total_Pix". Essa query retorna a quantidade total de transações registradas com o método de pagamento Pix na base de dados.
```sql
SELECT COUNT(*) AS Total_Pix
FROM pagamento
WHERE tipo_pagamento = 'Pix';
```
## Query 4 :orange_book

**Exibindo Quantidade e Valor Total de Pagamentos por Pix.**

- Nesta consulta, a cláusula **COUNT(*)** é empregada para contar o número total de registros na tabela pagamento onde o campo tipo_pagamento é 'Pix'. Além disso, a função **SUM**(pagamento.limite) calcula a soma dos valores presentes no campo limite da tabela pagamento. A função **COALESCE** é usada para garantir que, mesmo se não houver registros Pix, o resultado da soma seja apresentado como 0. Os resultados são renomeados como "Pagamento_Pix" para a contagem e "Valor_Total" para a soma total dos limites, proporcionando uma visão abrangente das transações Pix na base de dados.

```sql
SELECT 
  COUNT(*) AS Pagamento_Pix,
  COALESCE(SUM(pagamento.limite), 0) AS Valor_Total 
FROM pagamento
WHERE pagamento.tipo_pagamento = 'Pix';
```
## Query 5 :notebook:

**Exibindo Quantidade e Valor Total de pagamentos por Cartão.**

- Nesta consulta, são apresentados as mesmas aplicações da consulta anterior, mas para o método de pagamento Cartão.

```sql
SELECT 
  COUNT(*) AS Pagamento_Cartão,
  COALESCE(SUM(pagamento.limite), 0) AS Valor_Total 
FROM pagamento
WHERE pagamento.tipo_pagamento = 'Cartão';
```
## Query 6 :books:

**Consulta 6: Exibindo Quantidade e Valor Total de pagamentos por Boleto.**

- Nesta consulta, são apresentados as mesmas aplicações da consulta anterior, mas para o método de pagamento Boleto.

```sql
SELECT 
  COUNT(*) AS Pagamento_Boleto,
  COALESCE(SUM(pagamento.limite), 0) AS Valor_Total 
FROM pagamento
WHERE pagamento.tipo_pagamento = 'Boleto';
```
## Query 7 :interrobang:

**Exibindo Média do limite para pagamento com cartão.**

- Nesta consulta, a cláusula **AVG**(limite) é empregada para calcular a média dos valores presentes no campo limite da tabela pagamento, considerando apenas os registros em que o campo tipo_pagamento é 'Cartão'. O resultado é renomeado como "media_limite_cartão", proporcionando uma visão da média dos limites de pagamento efetuados com cartão na base de dados.

```sql
SELECT AVG(limite) AS media_limite_cartao
FROM pagamento
WHERE tipo_pagamento = 'Cartão';
```
## Query 8 :bangbang:

**Exibindo Total de Pedidos efetuados e Valor Total do Frete com Status confirmados.**

- Nesta consulta, são utilizadas as cláusulas **SUM** para calcular o total do frete e o valor total dos pedidos, e **GROUP BY** para agrupar os resultados pelo status de pedido. A condição WHERE status_pedido = 'Confirmado' filtra os pedidos com status confirmado. O resultado exibe o status renomeado como "Status", o total do frete como "Frete_Total" e o valor total dos pedidos como "Pedido_Total", oferecendo uma visão consolidada dessas informações para pedidos confirmados na base de dados.

```sql
SELECT status_pedido AS Status, SUM(frete) AS Frete_Total, SUM(valor_total) AS Pedido_Total 
FROM pedido
WHERE status_pedido = 'Confirmado'
GROUP BY status_pedido;
```
## Query 9 :heavy_exclamation_mark:

**Exibindo Razão Social, e-mail e endereço dos fornecedores do Estado de SP.**

- Nesta consulta, é utilizada a cláusula SELECT para escolher as colunas "razao_social", "email" e "endereco" da tabela "fornecedor". A cláusula **FROM** especifica a tabela alvo, que é "fornecedor". A condição **WHERE** endereco **LIKE** '%SP%' filtra os fornecedores cujos endereços contenham a sigla "SP", indicando o estado de São Paulo. Essa consulta proporciona uma lista dos fornecedores dessa região, extraindo informações importantes como razão social, e-mail e endereço.

```sql
SELECT razao_social, email, endereco
FROM fornecedor
WHERE endereco LIKE '%SP%';
```
## Query 10 :flags:

**Exibindo Média da avaliação dos produtos com duas casas decimais e cabeçalho renomeado.**

- Nesta consulta, é empregada a função **AVG(avaliacao)** para calcular a média da coluna "avaliacao" na tabela "produto". A função **ROUND** é utilizada para arredondar o resultado para duas casas decimais. A cláusula SELECT é usada para escolher o resultado calculado, renomeando-o como "Médida_Avaliação". Assim, a consulta apresenta a média das avaliações dos produtos com precisão de duas casas decimais.

```sql
SELECT ROUND(AVG(avaliacao), 2) AS Médida_Avaliação
FROM produto;
```
## Query 11 :cyclone:

**Exibindo na ordem descendente Nota e Nome dos produtos das categorias filtradas.**

- 
Nesta consulta, a cláusula **SELECT** é usada para escolher as colunas "nome" (renomeada como "Nome") e "avaliacao" (renomeada como "Nota") da tabela "produto". A cláusula **WHERE** filtra os resultados, incluindo apenas os produtos cuja categoria pertence a 'Eletrônico' ou 'Informática'. A cláusula **ORDER BY** organiza os resultados em ordem descendente com base na coluna "nome". Em resumo, a consulta exibe o nome e a avaliação de produtos nas categorias mencionadas, ordenados de forma decrescente pelo nome.

```sql
SELECT nome AS Nome, avaliacao AS Nota
FROM produto
WHERE categoria IN ('Eletrônico', 'Informatica')
ORDER BY nome DESC;
```
## Query 12 :sparkles:

**Exibindo número de pedidos por cliente pf e pj.**

- Essa consulta utiliza a cláusula **SELECT** para escolher as colunas "id_cliente" (renomeada como "ID"), "nome" e a contagem de pedidos para cada cliente (renomeada como "Nº_Pedidos"). A cláusula **FROM** indica as tabelas envolvidas, sendo "cliente" e "pedido". O **LEFT JOIN** é utilizado para incluir todos os clientes, mesmo aqueles sem pedidos correspondentes na tabela "pedido". A cláusula **ON** especifica a condição de junção entre as tabelas. A cláusula **GROUP BY** agrupa os resultados pelo "id_cliente", proporcionando a contagem de pedidos para cada cliente. Em resumo, a consulta exibe o ID, nome e o número de pedidos para cada cliente, incluindo aqueles sem pedidos

```sql
SELECT id_cliente AS ID, nome AS Nome, COUNT(id_pedido) AS Nº_Pedidos
FROM cliente
LEFT JOIN pedido ON id_cliente = pedido.id_pedido
GROUP BY id_cliente;
```
## Query 13 :star2:

**Exibindo pedidos entre 01/11/2023 à 31/12/2023.**

- A consulta utiliza a cláusula **SELECT** para escolher as colunas "data_pedido" (renomeada como "Data"), "descricao_pedido" (renomeada como "Descrição"), e "quantidade" (renomeada como "Quant") da tabela "pedido". A cláusula **FROM** indica a tabela envolvida. A cláusula **WHERE** inclui a condição **BETWEEN** '2023-11-01' AND '2023-12-31', que filtra os resultados, exibindo apenas os pedidos feitos entre 1º de novembro de 2023 e 31 de dezembro de 2023. Resumidamente, a consulta recupera e apresenta a data do pedido, descrição e quantidade para pedidos dentro desse intervalo específico de datas.

```sql
SELECT data_pedido AS Data, descricao_pedido AS Descrição, quantidade AS Quant
FROM pedido
WHERE data_pedido BETWEEN '2023-11-01' AND '2023-12-31';
```
## Query 14 :flashlight:

**Exibindo os três primeiros caracteres do RG dos clientes PF.**

- Essa consulta utiliza a cláusula **SELECT** para escolher as colunas "nome" e uma substring dos três primeiros caracteres da coluna "RG" (renomeada como "RG_3_Digitos") da tabela "cliente_pf". A função **SUBSTRING(RG, 1, 3)** é aplicada à coluna "RG" para extrair os três primeiros caracteres, fornecendo uma versão abreviada do número de Registro Geral (RG) dos clientes pessoa física. Resumidamente, a consulta retorna os nomes dos clientes e os três primeiros dígitos de seus números de RG.

```sql
SELECT nome, SUBSTRING(RG, 1, 3) AS RG_3_Digitos
FROM cliente_pf;
```
## Query 15 :pushpin:

**Exibindo a quantidade de produtos por Categoria, usando a cláusula Having.**

- Nesta consulta, é utilizado o **SELECT** para escolher as colunas "categoria" e a contagem de produtos (renomeada como "total_produtos") da tabela "produto". A cláusula **GROUP BY** é empregada para agrupar os resultados com base na coluna "categoria". Além disso, a cláusula **HAVING** é utilizada para filtrar os resultados, exibindo apenas as categorias com menos de 10 produtos. Em resumo, a consulta retorna as categorias de produtos e a contagem de produtos para aquelas que têm menos de 10 itens.

```sql
SELECT categoria, COUNT(id_produto) AS total_produtos
FROM produto
GROUP BY categoria
HAVING total_produtos < 10;
```
## Licença :traffic_light:
Este projeto está licenciado sob a Licença consulte o arquivo 
 [MIT](https://opensource.org/licenses/MIT).


## Agradecimentos :tada:

Digital Innovation One: Pela oportunidade de aprendizado e formação em Java.

JetBrains: Pela excelente IDE IntelliJ IDEA.

Copyright © 2023 / RenatoMor

