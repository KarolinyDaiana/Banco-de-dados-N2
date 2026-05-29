SELECT
    u.id,
    CONCAT(u.nome, ' ', u.sobrenome) AS nome_completo
FROM usuarios u
LEFT JOIN sessoes s ON u.id = s.id_aluno
WHERE u.perfil = 'aluno'
  AND s.id IS NULL;