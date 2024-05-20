WITH INTERIM_TABLE AS (
	SELECT
	league_id, season,id as match,
	home_team_api_id as team_api_id,
	home_team_goal as team_goals
	FROM `sql-sandbox-20240505.final_exercise.match` AS matches
	UNION ALL
	SELECT
	league_id, season, id as match,
	away_team_api_id as team_api_id,
	away_team_goal as team_goals
	FROM `sql-sandbox-20240505.final_exercise.match` AS matches
)

-- sum goals by season and team
SELECT
season,
team_api_id,
sum(team_goals) as sum_goals
FROM INTERIM_TABLE
GROUP BY season, team_api_id
ORDER BY season DESC, sum_goals DESC;

-- merged query

SELECT
  season,
  team_long_name,
  Max(sum_goals) as amount_goals
FROM (
  -- sum goals by season and team
  SELECT
  season,
  team_api_id,
  sum(team_goals) as sum_goals
  FROM INTERIM_TABLE
  GROUP BY season, team_api_id
  ORDER BY season DESC, sum_goals DESC
) as matches
JOIN `sql-sandbox-20240505.final_exercise.team` as teams
ON matches.team_api_id=teams.team_api_id
  GROUP BY season, team_long_name;
