WITH RECURSIVE rec_cte_1 AS(
    SELECT best_teammate_id, user_info_id, nickname
    FROM user_page
    WHERE best_teammate_id = 5
    UNION
    SELECT up.best_teammate_id, up.user_info_id, up.nickname
    FROM user_page up
    INNER JOIN rec_cte_1 rc1 on rc1.best_teammate_id = up.user_info_id
)
SELECT * FROM rec_cte_1;

WITH RECURSIVE rec_cte_2 AS(
    SELECT regime, kill_death_help, result
    FROM last_game
    WHERE kill_death_help = '13/4/20'
    UNION
    SELECT lg.regime, lg.kill_death_help, lg.result
    FROM last_game lg
    INNER JOIN rec_cte_2 rc2 on rc2.kill_death_help = lg.result
)
SELECT * FROM  rec_cte_2;