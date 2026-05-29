SELECT
    e.nome AS escola,
    ROUND((SUM(s.num_questoes_corretas)::numeric / NULLIF(SUM(s.num_questoes), 0)) * 100, 2) AS percentual_acerto
FROM sessoes s
JOIN simulados sim ON s.id_simulado = sim.id
JOIN escolas e ON sim.id_escola = e.id
WHERE s.estado = 'concluida'
GROUP BY e.id, e.nome;