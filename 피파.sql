use fifa;

select count(*) from player; #53110
select count(*) from team;   #1145
select count(*) from coach; # 1369
select count(*) from position;  #15
select count(*) from nationality; #189
select count(*) from league; #56


# Liverpool 의 모든 선수 이름과 해당 팀 이름을 검색합니다.
select t.team_name, p.club_team_id, p.short_name, p.long_name
from team t
JOIN player p ON t.team_id = p.club_team_id
where t.team_name = 'Liverpool';

# Tottenham 감독의 국적의 가진 선수들 중 Premier League 에서 뛰고 있는 선수를 검색합니다.
SELECT p.short_name, p.long_name, n.nationality_name, l.league_name
FROM player p
JOIN nationality n ON p.nationality_id = n.nationality_id
JOIN league l ON p.league_id = l.league_id
WHERE l.league_name = 'Premier League' AND p.nationality_id = '14';

# 게임에서 선수들을 위치 시킬 수 있는 모든 포지션 목록을 가져옵니다.
select position_id, position_name
from position;

# Premier League 에 속한 팀 목록을 가져옵니다.

select t.team_name, l.league_name
from team t
join league l on t.league_id = l.league_id
where l.league_name ='Premier League' and l.league_id ='13';

# 각 리그별 등록 선수을 조사하여 가장 많이 등록된 순서로 목록을 가져옵니다.
select p.league_id, l.league_name,count(*) cnt
from player p, league l
where p.league_id = l.league_id
group by p.league_id
order by cnt desc;

-- select p.league_id, l.league_name

-- # 대한민국 국적의 선수 중 30세 이상의 선수 목록을 가져옵니다.
select n.nationality_name, p.*
from nationality n, player p
where n.nationality_name = 'korea republic'
and n.nationality_id = p.nationality_id
and 30 <=p.age
order by p.age desc;

# overall 이 가장 높은 선수 10명을 검색합니다. overall 순서로 목록을 만듭니다.
select t.team_name,p.*
from player p, team t
where p.club_team_id = t.team_id
order by p.overall desc
limit 10;

# 연봉(wage_eur) 이 가장 높은 선수 10명을 검색합니다. wage_eur 순서로 목을 만듭니다.
select t.team_name,p.*
from player p, team t
where p.club_team_id = t.team_id
order by p.wage_eur desc
limit 10;

# Premier League에 소속된 선수 중 연봉(wage_eur) 대비 시장 가치(value_eur) 가 높은 선수 10명을 검색합니다.
select l.league_name, t.team_name, p.long_name, p.value_eur/p.wage_eur value_ratio, p.*
from player p, team t, league l
where p.club_team_id = t.team_id
and p.league_id = l.league_id
and l.league_id - 13
and 23<=p.age
order by value_ratio desc
limit 10;




