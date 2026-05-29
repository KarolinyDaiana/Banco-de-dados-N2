SELECT
    e.nome AS escola,
    COUNT(ue.id_usuario) AS total_alunos
FROM escolas e
LEFT JOIN usuarios_escolas ue ON e.id = ue.id_escola
GROUP BY e.id, e.nome
ORDER BY total_alunos DESC;
 
SELECT
    u.id,
    CONCAT(u.nome, ' ', u.sobrenome) AS nome_completo
FROM usuarios u
LEFT JOIN sessoes s ON u.id = s.id_aluno
WHERE u.perfil = 'aluno'
  AND s.id IS NULL;
 
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
 
SELECT
    e.nome AS escola,
    ROUND((SUM(s.num_questoes_corretas)::numeric / NULLIF(SUM(s.num_questoes), 0)) * 100, 2) AS percentual_acerto
FROM sessoes s
JOIN simulados sim ON s.id_simulado = sim.id
JOIN escolas e ON sim.id_escola = e.id
WHERE s.estado = 'concluida'
GROUP BY e.id, e.nome;
 
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
 
SELECT
    CONCAT(u.nome, ' ', u.sobrenome) AS nome_aluno,
    SUM(s.num_questoes_corretas) AS total_acertos
FROM usuarios u
JOIN sessoes s ON u.id = s.id_aluno
WHERE s.estado = 'concluida'
GROUP BY u.id, u.nome, u.sobrenome
HAVING SUM(s.num_questoes) >= 100
ORDER BY total_acertos DESC
LIMIT 5;