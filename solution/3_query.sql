SELECT
MIN(Date) As Earliest,
DATE_DIFF(Max(DATE),
Min(DATE), Day) As Days_Between,
MAX(DATE) AS Latest
FROM `sql-sandbox-20240505.final_exercise.match`;

