drop database if exists league;
create database league;
use league;

drop table if exists clubs;
create table clubs ( 
id BIGINT unsigned not null auto_increment primary key,
name VARCHAR(100),
stadium VARCHAR(100),
city VARCHAR(100)
);

drop table if exists referees;
create table referees ( 
id BIGINT unsigned not null auto_increment primary key,
name VARCHAR(100),
surname VARCHAR(100)
);

drop table if exists players;
create table players ( 
id BIGINT unsigned not null auto_increment primary key,
name VARCHAR(100),
surname VARCHAR(100),
nationality text,
club_id BIGINT unsigned not null,
birthday date,
playing_position text,
club_number int,
status text,
foreign key (club_id) references clubs (id)
);

drop table if exists matches;
create table matches (
id BIGINT unsigned not null auto_increment primary key,
hometeam_id BIGINT unsigned not null,
hometeam_points tinyint,
visitorteam_points tinyint,
visitorteam_id BIGINT unsigned not null,
matchday date,
tour tinyint,
referee_id BIGINT unsigned not null,
foreign key (hometeam_id) references clubs (id),
foreign key (visitorteam_id) references clubs (id),
foreign key (referee_id) references referees (id),
check (hometeam_id != visitorteam_id)
);

drop table if exists match_corners;
create table match_corners (
match_id BIGINT unsigned not null,
hometeam_corners tinyint,
visitorteam_corners tinyint,
foreign key (match_id) references matches (id)
);

drop table if exists match_shots;
create table match_shots (
match_id BIGINT unsigned not null,
hometeam_shots tinyint,
visitorteam_shots tinyint,
foreign key (match_id) references matches (id)
);

drop table if exists match_ycards;
create table match_ycards (
id BIGINT unsigned not null auto_increment primary key,
match_id BIGINT unsigned not null,
hometeam_yellow_cards tinyint,
visitorteam_yellow_cards tinyint,
foreign key (match_id) references matches (id)
);

drop table if exists players_ycards;
create table players_ycards (
ycard_id BIGINT unsigned not null,
player_id BIGINT unsigned not null,
foreign key (ycard_id) references match_ycards (id),
foreign key (player_id) references players (id)
);

drop table if exists match_redcards;
create table match_redcards (
id BIGINT unsigned not null auto_increment primary key,
match_id BIGINT unsigned not null,
hometeam_red_cards tinyint,
visitorteam_red_cards tinyint,
foreign key (match_id) references matches (id)
);

drop table if exists players_redcards;
create table players_redcards (
redcard_id BIGINT unsigned not null,
player_id BIGINT unsigned not null,
foreign key (redcard_id) references match_redcards (id),
foreign key (player_id) references players (id)
);

drop table if exists match_goals;
create table match_goals (
id BIGINT unsigned not null auto_increment primary key,
match_id BIGINT unsigned not null,
scorer_id BIGINT unsigned not null,
assist_id BIGINT unsigned,
foreign key (match_id) references matches (id),
foreign key (scorer_id) references players (id),
foreign key (assist_id) references players (id),
check (scorer_id != assist_id)
);

