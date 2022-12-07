EXPLAIN ANALYSE SELECT teammate_team, sum(teammate_rating) FROM best_teammate
                GROUP BY teammate_team;

EXPLAIN ANALYSE SELECT max(average_kd) AS top3_kd, best_hero FROM stats
                GROUP BY best_hero
                ORDER BY top3_kd DESC
                LIMIT 3;

EXPLAIN ANALYSE SELECT regime, count(regime) AS play_regime FROM last_game
                GROUP BY regime;

EXPLAIN ANALYSE SELECT avg(average_kd) AS avg_kd FROM stats;

EXPLAIN ANALYSE SELECT min(average_kd) AS bot3_kd, best_hero FROM stats
                GROUP BY best_hero
                ORDER BY bot3_kd ASC
                LIMIT 3;



CREATE INDEX stats_rating_idx ON stats(rating);
EXPLAIN ANALYSE SELECT * FROM stats
                WHERE rating > 3000;

CREATE INDEX your_team_captain_idx ON your_team USING hash(capitan_nickname);
EXPLAIN ANALYSE SELECT capitan_nickname FROM your_team
                WHERE capitan_nickname = '_Lekma_';

SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';