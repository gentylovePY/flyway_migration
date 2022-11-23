CREATE VIEW high_mmr
AS SELECT * FROM stats
WHERE rating > 3000;
SELECT * FROM high_mmr;

CREATE VIEW new_team_name
AS SELECT * FROM best_teammate
WHERE teammate_team LIKE '%NAVI%'
WITH LOCAL CHECK OPTION;
UPDATE new_team_name
SET teammate_team = 'NAVI TEAM'
WHERE teammate_team = 'NAVI';
SELECT * FROM new_team_name;