-- preview table:
SELECT *,
	weight/2.205 as kg_weight,
	height/100 as m_height,
	FROM `sql-sandbox-20240505.final_exercise.player`

-- create table:
CREATE TABLE `sql-sandbox-20240505.final_exercise.PlayerBMI` AS (
	SELECT *,
	weight/2.205 as kg_weight,
	height/100 as m_height,
	FROM `sql-sandbox-20240505.final_exercise.player`
)
