-- --------------------------------------------------------------------
-- 1. Exibindo Categoria dos pedidos dos Clientes PJ.

SELECT nome AS Razão_Social, descricao_pedido AS Categoria
FROM cliente_pj
INNER JOIN pedido ON id_cliente = id_pedido;
-- --------------------------------------------------------------------
-- 2. Exibindo Endereço, renomear cabeçalho e Concatenar nome e sobrenome dos clientes pf do estado de Minas Gerais.

SELECT CONCAT(nome, ' ', sobrenome) AS Nome_Completo, endereco AS Endereço
FROM cliente_pf
WHERE endereco LIKE '%RJ%';
-- --------------------------------------------------------------------
-- 3. Exibindo Quantidade de pagamento via Pix:

SELECT COUNT(*) AS Total_Pix
FROM pagamento
WHERE tipo_pagamento = 'Pix';
-- --------------------------------------------------------------------
-- 4. Exibindo Quantidade e Valor Total de pagamentos por Pix.

SELECT 
  COUNT(*) AS Pagamento_Pix,
  COALESCE(SUM(pagamento.limite), 0) AS Valor_Total 
FROM pagamento
WHERE pagamento.tipo_pagamento = 'Pix';
-- --------------------------------------------------------------------
-- 5. Exibindo Quantidade e Valor Total de pagamentos por Cartão.

SELECT 
  COUNT(*) AS Pagamento_Cartão,
  COALESCE(SUM(pagamento.limite), 0) AS Valor_Total 
FROM pagamento
WHERE pagamento.tipo_pagamento = 'Cartão';
-- --------------------------------------------------------------------
-- 6. Exibindo Quantidade e Valor Total de pagamentos por Boleto.

SELECT 
  COUNT(*) AS Pagamento_Boleto,
  COALESCE(SUM(pagamento.limite), 0) AS Valor_Total 
FROM pagamento
WHERE pagamento.tipo_pagamento = 'Boleto';
-- --------------------------------------------------------------------
-- 7. Exibindo Média do limite para pagamento com cartão.

SELECT AVG(limite) AS media_limite_cartao
FROM pagamento
WHERE tipo_pagamento = 'Cartão';
-- --------------------------------------------------------------------
-- 8. Exibindo Total de Pedidos efetuados e Valor Total do Frete com Status confirmados.

SELECT status_pedido AS Status, SUM(frete) AS Frete_Total, SUM(valor_total) AS Pedido_Total 
FROM pedido
WHERE status_pedido = 'Confirmado'
GROUP BY status_pedido;
-- -------------------------------------------------------------------- 
-- 9. Exibindo Razão Social, e-mail e endereço dos fornecedores do Estado de SP.

SELECT razao_social, email, endereco
FROM fornecedor
WHERE endereco LIKE '%SP%';
-- -------------------------------------------------------------------- 
-- 10. Exibindo Média da avaliação dos produtos com duas casas decimais e cabeçalho renomeado.

SELECT ROUND(AVG(avaliacao), 2) AS Médida_Avaliação
FROM produto;
-- -------------------------------------------------------------------- 
-- 11. Exibindo na ordem descendente Nota e Nome dos produtos das categorias filtradas.

SELECT nome AS Nome, avaliacao AS Nota
FROM produto
WHERE categoria IN ('Eletrônico', 'Informatica')
ORDER BY nome DESC;
-- -------------------------------------------------------------------- 
-- 12. Exibindo número de pedidos por cliente pf e pj.

SELECT id_cliente AS ID, nome AS Nome, COUNT(id_pedido) AS Nº_Pedidos
FROM cliente
LEFT JOIN pedido ON id_cliente = pedido.id_pedido
GROUP BY id_cliente;
-- -------------------------------------------------------------------- 
-- 13. Exibindo pedidos entre 01/11/2023 à 31/12/2023.

SELECT data_pedido AS Data, descricao_pedido AS Descrição, quantidade AS Quant
FROM pedido
WHERE data_pedido BETWEEN '2023-11-01' AND '2023-12-31';
-- -------------------------------------------------------------------- 
-- 14. Exibindo os três primeiros caracteres do RG dos clientes PF

SELECT nome, SUBSTRING(RG, 1, 3) AS RG_3_Digitos
FROM cliente_pf;
-- -------------------------------------------------------------------- 
-- 15. Exibindo a quantidade de produtos por Categoria.

SELECT categoria AS Categoria, COUNT(id_produto) AS Total_de_Produtos
FROM produto
GROUP BY categoria;

-- 15. Exibindo a quantidade de produtos por Categoria, usando a clausula Having.
SELECT categoria, COUNT(id_produto) AS total_produtos
FROM produto
GROUP BY categoria
HAVING total_produtos < 10;
-- -------------------------------------------------------------------- 