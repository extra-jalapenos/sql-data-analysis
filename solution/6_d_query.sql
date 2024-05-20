SELECT *,
kg_weight / POW(m_height, 2) as BMI
FROM `sql-sandbox-20240505.final_exercise.PlayerBMI`
WHERE kg_weight / POW(m_height, 2) >= 18.5 and kg_weight / POW(m_height, 2) <= 24.9;
