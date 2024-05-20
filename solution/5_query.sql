SELECT COUNT(DISTINCT season) AS distinct_seasons_with_matches
FROM `sql-sandbox-20240505.final_exercise.match` AS match;
-- it's 8 if it's truly about seasons.

SELECT COUNT(DISTINCT CONCAT(league_id, season)) AS distinct_seasons_with_matches
FROM `sql-sandbox-20240505.final_exercise.match` AS match;
-- it's 88 if it's about the combination of league and season.

-- matches per league and season
SELECT
name,
season,
Count(*) AS Num_Matches
FROM `sql-sandbox-20240505.final_exercise.match` AS match
LEFT JOIN `sql-sandbox-20240505.final_exercise.leagues` as league
ON match.league_id=league.id
GROUP BY name, season
ORDER BY Num_Matches DESC

-- Belgium Jupiler League in 2013/2014 has only 12 matches, and the Swiss Super League in 2011 has less than usual.
