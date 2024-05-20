SELECT count(*) as row_count,
FROM `sql-sandbox-20240505.final_exercise.PlayerBMI`
WHERE NOT(kg_weight / POW(m_height, 2) >= 18.5 and kg_weight / POW(m_height, 2) <= 24.9);

-- 863 players do not have a BMI classified as "normal"
