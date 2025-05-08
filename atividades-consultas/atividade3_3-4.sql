-- Mostrar locações confirmadas com checkin a partir de 24/04/2025
-- Atributos-chave: id_reserva, id_propriedade, cpf_hospede, cpf_locador
-- Total de dias locado: diferença entre checkout e checkin
-- Nome do proprietário e do hóspede
-- Valor da diária
SELECT
  r.id_reserva,
  p.id_propriedade,
  r.cpf_hospede,
  p.cpf_locador,
  (r.checkout - r.checkin) AS total_dias_locado,
  loc.nome AS nome_proprietario,
  hos.nome AS nome_hospede,
  p.preco_noite
FROM reserva r
JOIN propriedade p ON r.id_propriedade = p.id_propriedade
JOIN locador loc ON p.cpf_locador = loc.cpf
JOIN hospede hos ON r.cpf_hospede = hos.cpf
WHERE r.status = 'confirmada'
  AND r.checkin >= '2025-04-24';
