-- Usuários que são tanto anfitriões quanto locatários (mesmo CPF nas duas tabelas)
SELECT h.cpf, h.nome, h.sobrenome
FROM hospede h
JOIN locador l ON h.cpf = l.cpf;

-- Anfitriões com pelo menos 5 locações
-- Mostra: nome, cidade, quantidade de imóveis, total de locações
SELECT l.nome, loc.cidade,
       COUNT(DISTINCT p.id_propriedade) AS qtd_imoveis,
       COUNT(r.id_reserva) AS total_locacoes
FROM locador l
JOIN propriedade p ON l.cpf = p.cpf_locador
JOIN reserva r ON p.id_propriedade = r.id_propriedade
JOIN localizacao loc ON p.id_localizacao = loc.id_localizacao
GROUP BY l.cpf, l.nome, loc.cidade
HAVING COUNT(r.id_reserva) >= 5;

-- Valor médio das diárias por mês para todas e para só confirmadas
SELECT
  TO_CHAR(r.checkin, 'YYYY-MM') AS mes,
  ROUND(AVG(p.preco_noite), 2) AS media_todas,
  ROUND(AVG(CASE WHEN r.status = 'confirmada' THEN p.preco_noite END), 2) AS media_confirmadas
FROM reserva r
JOIN propriedade p ON r.id_propriedade = p.id_propriedade
GROUP BY mes
ORDER BY mes;

-- Locatários mais jovens que algum anfitrião
SELECT DISTINCT h.cpf, h.nome, h.datanascimento
FROM hospede h
WHERE EXISTS (
  SELECT 1 FROM locador l WHERE h.datanascimento > l.datanascimento
);

-- Locatários mais jovens que todos os anfitriões
SELECT h.cpf, h.nome, h.datanascimento
FROM hospede h
WHERE h.datanascimento > ALL (
  SELECT l.datanascimento FROM locador l
);