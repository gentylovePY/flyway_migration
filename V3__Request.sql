SELECT result FROM last_game WHERE regime = 'Ranked All Pick';
SELECT date_time FROM last_game WHERE result = 'win';

SELECT teammate_nickname FROM best_teammate WHERE teammate_rating > 2000;
SELECT teammate_nickname FROM best_teammate WHERE teammate_team = 'Team Spirit';

SELECT average_kd FROM stats WHERE rating > 2500;
SELECT in_the_game_since FROM stats WHERE matches_played > 400;

SELECT user_name From user_info WHERE phone_number = '89276394837';
SELECT email FROM  user_info WHERE user_name = 'Vadim';

SELECT * FROM user_page WHERE id < 5;
SELECT * FROM user_page WHERE id >= 5;

SELECT team_name FROM your_team WHERE team_place = 1;
SELECT capitan_nickname FROM your_team WHERE team_name = 'Tundra Esports';