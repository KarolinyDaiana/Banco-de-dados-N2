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