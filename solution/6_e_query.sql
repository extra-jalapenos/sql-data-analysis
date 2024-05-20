SELECT count(*) as row_count,
FROM `sql-sandbox-20240505.final_exercise.PlayerBMI`
WHERE kg_weight / POW(m_height, 2) >= 18.5 and kg_weight / POW(m_height, 2) <= 24.9;

-- 10197 rows.
