CREATE TABLE user_page (
    id serial primary key,
    nickname varchar(50) not null
);

CREATE TABLE user_info (
    id serial primary key,
    user_name varchar(50) not null,
    email varchar(50) not null,
    phone_number varchar(11) not null
);

CREATE TABLE stats (
    id serial primary key,
    average_kd numeric not null,
    rating bigint not null,
    best_hero varchar(20) not null,
    matches_played bigint not null,
    in_the_game_since date not null
);

CREATE TABLE last_game (
    id serial primary key,
    regime varchar(15) not null,
    kill_death_help varchar(11) not null,
    result varchar(5) not null,
    date_time date not null
);

CREATE TABLE your_team (
    id serial primary key,
    team_name varchar(30) not null,
    capitan_nickname varchar(20) not null,
    team_place integer not null
);

CREATE TABLE best_teammate (
    id serial primary key,
    teammate_nickname varchar(20) not null,
    teammate_rating bigint not null,
    teammate_team varchar(30) not null
);

ALTER TABLE user_page ADD user_info_id BIGINT REFERENCES user_info(id);

ALTER TABLE user_info ADD stats_id BIGINT REFERENCES stats(id);

ALTER TABLE stats ADD last_game_id BIGINT REFERENCES last_game(id);

ALTER TABLE user_page ADD your_team_id BIGINT REFERENCES your_team(id);

ALTER TABLE user_page ADD best_teammate_id BIGINT REFERENCES best_teammate(id);