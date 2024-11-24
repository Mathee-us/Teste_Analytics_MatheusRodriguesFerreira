-- consulta 1
-- Listar o nome do produto, categoria e a soma total de vendas (Quantidade * Preço) 
--para cada produto. Ordene o resultado pelo valor total de vendas em ordem decrescente.

SELECT
	PRODUTO,
	CATEGORIA,
	SUM(QUANTIDADE * PRECO) AS TOTAL_VENDAS -- o total_vendas sera somado por produto e categoria
FROM
	REGISTROS
GROUP BY
	PRODUTO,
	CATEGORIA --  agrupa por produto e categoria para mostrar o total de vendas
ORDER BY
	TOTAL_VENDAS DESC

-- Consulta 2
-- Identificar os produtos que venderam menos no mês de junho de 2023.

SELECT
	PRODUTO,
	EXTRACT(MONTH FROM DATA) AS MES, -- extrai o mes da data
	SUM(QUANTIDADE * PRECO) AS TOTAL_VENDAS
FROM
	REGISTROS
WHERE
	EXTRACT(MONTH FROM DATA) = 6 -- filtra para usar somente os dados de junho
GROUP BY
	PRODUTO,MES -- agrupa por produto e mes para poder mostrar o total de vendas de cada produto em junho
ORDER BY
	TOTAL_VENDAS -- ordena do menos vendido para o mais vendido
