-- mostre todas as tuplas da tabela propriedade
-- este comando retorna todas as colunas e linhas da relação que implementa as propriedades
SELECT *
FROM propriedade;

-- conte quantas propriedades existem por categoria
-- usa agregação COUNT(*) e GROUP BY para agrupar pelo tipo de propriedade
SELECT tipo,
       COUNT(*) AS total_por_tipo
FROM propriedade
GROUP BY tipo;

-- contar quantas propriedades existem em cada cidade
-- faz um JOIN entre propriedade e localizacao, agrupa por cidade e conta ocorrências
SELECT l.cidade,
       COUNT(*) AS total_por_cidade
FROM propriedade p
JOIN localizacao l ON p.id_localizacao = l.id_localizacao
GROUP BY l.cidade;
