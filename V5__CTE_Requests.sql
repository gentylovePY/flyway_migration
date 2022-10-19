WITH cte_1 AS(
    SELECT regime,
           (CASE
                WHEN result = 'win'
                    THEN 'In this regime, the player won'
                ELSE 'In this regime, the player was defeated'
               END) result_of_game_regime
    FROM last_game)
SELECT regime, result_of_game_regime FROM cte_1;

WITH cte_2 AS(
    SELECT best_hero,
           (CASE
               WHEN average_kd >= 2.5
               THEN 'This player has a good KD'
               ELSE 'This player has a bad KD'
               END) best_hero_user
    FROM stats)
SELECT best_hero, best_hero_user FROM cte_2;

WITH cte_3 AS(
    UPDATE your_team
           SET capitan_nickname = 'QWERTY'
           WHERE capitan_nickname = 'XYZ'
           RETURNING *
)
SELECT * FROM cte_3;

WITH cte_4 AS(
    SELECT nickname
    FROM user_page
    WHERE nickname = 'Zindy'
)
DELETE FROM user_page
WHERE nickname in (SELECT * FROM cte_4);