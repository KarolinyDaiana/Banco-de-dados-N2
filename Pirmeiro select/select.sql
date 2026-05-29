SELECT
    e.nome AS escola,
    COUNT(ue.id_usuario) AS total_alunos
FROM escolas e
LEFT JOIN usuarios_escolas ue ON e.id = ue.id_escola
GROUP BY e.id, e.nome
ORDER BY total_alunos DESC;