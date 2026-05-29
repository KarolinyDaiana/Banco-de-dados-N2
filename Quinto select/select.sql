SELECT
    s.id AS id_sessao,
    s.num_questoes AS total_questions_armazenado,
    COUNT(ur.id) AS contagem_real_respostas,
    s.num_questoes_corretas AS correct_count_armazenado,
    COUNT(CASE WHEN ur.acertou = true THEN 1 END) AS contagem_real_acertos
FROM sessoes s
LEFT JOIN usuarios_respostas ur ON s.id = ur.id_sessao
WHERE s.estado = 'concluida'
GROUP BY s.id, s.num_questoes, s.num_questoes_corretas
HAVING s.num_questoes <> COUNT(ur.id)
    OR s.num_questoes_corretas <> COUNT(CASE WHEN ur.acertou = true THEN 1 END);