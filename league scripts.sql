use league;
#1 количество голов, забитых игроками команды с id = 1
select count(*) as goals from match_goals
where scorer_id in (select id from players where club_id = 1);
#2 Выборка матчей команды с id = 1
select * from matches 
where hometeam_id = 1
union
select * from matches 
where visitorteam_id = 1;
#3 лучший бомбардир лиги
select count(*) as goals, scorer_id
from match_goals
group by scorer_id
order by goals desc
limit 1;
# игроки , забившие в матче 1
select match_goals.id, players.name 'Имя', players.surname 'Фамилия'
from match_goals
join 
players on match_goals.scorer_id = players.id
where match_goals.match_id = 1;
# Сколько в среднем угловых в матчах команды 1
select avg(hometeam_corners + visitorteam_corners) as avg_corners_per_match
from match_corners
where match_id in (select id from matches where hometeam_id = 1 or visitorteam_id = 1);

# ПРЕДСТАВЛЕНИЯ
# наибольшее количетсво игроков в клубе
CREATE or replace VIEW team_players AS 
SELECT league.players.club_id, count(*) as num from players group by club_id;
select max(num) from team_players;
# Наибольшее количество карточек у игрока
CREATE or replace VIEW players_with_ycards AS 
SELECT league.players_ycards.ycard_id, count(*) as num from players_ycards group by player_id;
select max(num) from players_with_ycards;

# ХРАНИМЫЕ ПРОЦЕДУРЫ И ТРИГГЕРЫ
# тригер, предупреждающий об ошибке при заполнении данных.
delimiter //
CREATE TRIGGER match_result_check BEFORE INSERT ON league.matches
FOR EACH ROW
BEGIN
	IF(ISNULL(new.hometeam_id) or ISNULL(new.visitorteam_id)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Please enter team id';
	END IF;
END //
delimiter ;

# процедура, кто забил больше всех голов
delimiter //
CREATE PROCEDURE top_scorer (player_id) 
BEGIN
select count(*) as goals, scorer_id
from match_goals
group by scorer_id
order by goals desc
limit 1;
end //
delimiter ;
call top_scorer;


