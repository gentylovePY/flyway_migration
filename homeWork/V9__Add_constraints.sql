/* NOT NULL, PRIMARY KEY, FOREIGN KEY were put down, even when creating tables */

ALTER TABLE best_teammate ADD CHECK (teammate_rating < 20000);
ALTER TABLE best_teammate ADD CHECK (char_length(teammate_team) > 2);
ALTER TABLE best_teammate ADD UNIQUE (teammate_nickname);

ALTER TABLE your_team ADD CHECK (team_place > 0);
ALTER TABLE your_team ADD UNIQUE (capitan_nickname);
ALTER TABLE your_team ADD CHECK (char_length(team_name) > 1);

ALTER TABLE user_page ADD UNIQUE (nickname);

ALTER TABLE user_info ADD CHECK (char_length(phone_number) < 12);
ALTER TABLE user_info ADD CHECK (email LIKE '%@%');
ALTER TABLE user_info ADD UNIQUE (user_name);

ALTER TABLE stats ADD CHECK (in_the_game_since > '2013-07-09' AND in_the_game_since < current_date);
ALTER TABLE stats ADD CHECK (matches_played > 0);
ALTER TABLE stats ADD CHECK (char_length(best_hero) < 25);
ALTER TABLE stats ADD CHECK (rating > 9);
ALTER TABLE stats ADD CHECK (average_kd < 20);

ALTER TABLE last_game ADD CHECK (date_time > '2013-07-09' AND date_time < current_date);
ALTER TABLE last_game ADD CHECK (result = 'win' OR result = 'lose');
ALTER TABLE last_game ADD CHECK (char_length(kill_death_help) > 4);
ALTER TABLE last_game ADD CHECK (regime = 'Ranked All Pick' OR regime = 'Random Draft' OR regime = 'Turbo');