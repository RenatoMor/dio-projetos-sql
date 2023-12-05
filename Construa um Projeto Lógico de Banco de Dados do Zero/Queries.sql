-- -----------------------------------------------------------------------------------------------------------------
-- 1. Selecionar veiculo com placa que comece com "ABC":

SELECT *
FROM veiculo
WHERE placa LIKE 'ABC%';
-- -----------------------------------------------------------------------------------------------------------------
-- 2. Filtra ordens de serviço por data:

SELECT *
FROM ordem_servico
WHERE data BETWEEN '2023-10-01' AND '2023-11-01';
-- -----------------------------------------------------------------------------------------------------------------
-- 3. Filtrando pagamento com valores entre 50 e 100:

SELECT *
FROM pagamento
WHERE valor BETWEEN 50 AND 100;
-- -----------------------------------------------------------------------------------------------------------------
-- 4. Selecionando todos os dados de clientes e todos os dados dos seus veículos:

SELECT c.*, v.* -- Abreviando entidade cliente e veiculo
FROM cliente c -- origem: entidade cl
JOIN veiculo v ON c.ID_cliente = v.ID_cliente;
-- -----------------------------------------------------------------------------------------------------------------
-- 5. Selecionando todas as ordens de serviço com informações de veículos e clientes:

SELECT os.*, v.*, c.*
FROM ordem_servico os
JOIN veiculo v ON os.ID_veiculo = v.ID_veiculo
JOIN cliente c ON v.ID_cliente = c.ID_cliente;
-- -----------------------------------------------------------------------------------------------------------------
-- 6. Filtrando indormações de todas as ordens, veículos e clientes com os atributos abaixo:
-- (ID_ordem_servico, data da "OS", ID_veiculo, modelo, placa, nome concatenando com sobrenome e contato do cliente).

SELECT os.ID_ordem_servico, os.data, v.ID_veiculo, v.modelo, v.placa, CONCAT(c.nome, ' ', c.sobrenome) AS NomeCompleto, c.contato
FROM ordem_servico os
JOIN veiculo v ON os.ID_veiculo = v.ID_veiculo
JOIN cliente c ON v.ID_cliente = c.ID_cliente;
-- -----------------------------------------------------------------------------------------------------------------
-- 7. Soma do valor total pago por cada cliente concatenando nome e sobrenome:

SELECT CONCAT(c.nome, ' ', c.sobrenome) AS NomeCompleto, SUM(p.valor) AS TotalPago
FROM cliente c
JOIN veiculo v ON c.ID_cliente = v.ID_cliente
JOIN ordem_servico os ON v.ID_veiculo = os.ID_veiculo
JOIN pagamento p ON os.ID_ordem_servico = p.ID_ordem_servico
GROUP BY c.nome, c.sobrenome;
-- -----------------------------------------------------------------------------------------------------------------
-- 8. Informação do serviço realizado informando o número da "OS" na clausula WHERE:

SELECT t.servico, t.preco
FROM precos_orcamento po
JOIN tabela_precos t ON po.ID_tabela_precos = t.ID_tabela_precos
WHERE po.ID_ordem_servico = 35;
-- -----------------------------------------------------------------------------------------------------------------
-- 9. Contar a quantidade de itens no estoque por local:

SELECT local, COUNT(*) AS quantidade_de_itens
FROM estoque
GROUP BY local;
-- -----------------------------------------------------------------------------------------------------------------
-- 10. Selecionar os clientes com mais de um veículo:

SELECT c.nome, COUNT(v.ID_veiculo) AS total_veiculos
FROM cliente c
JOIN veiculo v ON c.ID_cliente = v.ID_cliente
GROUP BY c.ID_cliente
HAVING total_veiculos > 1;
-- -----------------------------------------------------------------------------------------------------------------
-- 11. Encontrar clientes e suas ordens de serviço com informações de varias tabelas:

SELECT c.nome, c.contato, os.*
FROM cliente c
LEFT JOIN veiculo v ON c.ID_cliente = v.ID_cliente
LEFT JOIN ordem_servico os ON v.ID_veiculo = os.ID_veiculo;
-- -----------------------------------------------------------------------------------------------------------------















