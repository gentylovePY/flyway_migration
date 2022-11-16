SELECT user_page.id, user_info.user_name, user_info.email
FROM user_page
INNER JOIN user_info
ON user_page.id = user_info.id;

SELECT *
FROM stats
INNER JOIN last_game
ON stats.last_game_id = last_game.id;

SELECT *
FROM user_page
LEFT JOIN best_teammate
ON user_page.best_teammate_id = best_teammate.id;

SELECT *
FROM user_page
RIGHT JOIN best_teammate
ON user_page.best_teammate_id = best_teammate.id;

SELECT *
FROM stats
FULL JOIN last_game
ON stats.last_game_id = last_game.id;

SELECT user_page.id, your_team.capitan_nickname
FROM user_page
CROSS JOIN your_team;
SELECT * FROM user_page,your_team;

SELECT *
FROM user_page
NATURAL JOIN best_teammate;

SELECT a.best_hero, a.matches_played, b.result
FROM stats a
JOIN last_game b
ON b.result = 'win';

SELECT user_name
FROM user_info ui
WHERE EXISTS(SELECT 1
    FROM stats s
    WHERE s.id = ui.id);

SELECT user_name
FROM user_info ui
WHERE NOT EXISTS(SELECT 1
             FROM stats s
             WHERE s.id = ui.id);