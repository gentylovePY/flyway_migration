CREATE MATERIALIZED VIEW only_information AS
    SELECT
        user_name,
        email,
        phone_number
    FROM user_info;
SELECT * FROM only_information;

CREATE MATERIALIZED VIEW stats_of_win AS
    SELECT
        kill_death_help,
        result
    FROM last_game;
SELECT * FROM stats_of_win;

CREATE MATERIALIZED VIEW best_hero_with_rating AS
    SELECT
        best_hero,
        rating
    FROM stats;
SELECT * FROM only_information;