
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

SELECT
season,
teams.team_api_id,
team_long_name,
sum(team_goals) as num_goals
FROM INTERIM_TABLE AS match_table
JOIN `sql-sandbox-20240505.final_exercise.team` as teams
ON match_table.team_api_id=teams.team_api_id
GROUP BY season, teams.team_api_id, team_long_name
ORDER BY season DESC, num_goals DESC;

-- this is probably not the way to do it. It's probably a self join but I don't get it.
-- Team 8634 is the leading one with 112 goals in the 2015 season
