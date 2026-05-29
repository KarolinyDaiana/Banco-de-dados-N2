SELECT
    CONCAT(u.nome, ' ', u.sobrenome) AS nome_aluno,
    ur.numero_alternativa AS alternativa_escolhida,
    ur.acertou AS is_correct
FROM usuarios_respostas ur
JOIN usuarios u ON ur.id_usuario = u.id
JOIN questoes q ON ur.id_questao = q.id
JOIN usuarios_escolas ue ON u.id = ue.id_usuario
JOIN escolas e ON ue.id_escola = e.id
WHERE q.numero_identificacao = 1025
  AND e.cnpj = 'JIEFWIIB000147';