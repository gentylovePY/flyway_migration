SELECT teammate_team, sum(teammate_rating) AS rating_sum FROM best_teammate
GROUP BY teammate_team;

SELECT max(average_kd) AS top3_kd, best_hero FROM stats
GROUP BY best_hero
ORDER BY top3_kd DESC
LIMIT 3;

SELECT regime, count(regime) AS play_regime FROM last_game
GROUP BY regime;

SELECT avg(average_kd) AS avg_kd FROM stats;

SELECT min(average_kd) AS bot3_kd, best_hero FROM stats
GROUP BY best_hero
ORDER BY bot3_kd ASC
LIMIT 3;
