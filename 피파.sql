use fifa;

select count(*) from player; #53110
select count(*) from team;   #1145
select count(*) from coach; # 1369
select count(*) from position;  #15
select count(*) from nationality; #189
select count(*) from league; #56


# Liverpool 의 모든 선수 이름과 해당 팀 이름을 검색합니다.

SELECT p.short_name AS Player, t.team_name AS Team
FROM player p, team t
WHERE p.club_team_id = t.team_id
and t.team_name LIKE 'Liverpool%';

    

# Tottenham 감독의 국적의 가진 선수들 중 Premier League 에서 뛰고 있는 선수를 검색합니다.
SELECT p.long_name, n.nationality_name
FROM team t, coach c, nationality n, player p, league l
WHERE t.coach_id = c.coach_id
and c.nationality_id = n.nationality_id
    and p.nationality_id = c.nationality_id
    and p.league_id = l.league_id
    and l.league_name = 'Premier League'
	and t.team_name like 'Tottenham%';



# 게임에서 선수들을 위치 시킬 수 있는 모든 포지션 목록을 가져옵니다.

SELECT *
FROM POSITION;


# Premier League 에 속한 팀 목록을 가져옵니다.

SELECT *
FROM PLAYER P
WHERE -- L.LEAGUE_NAME = 'Premier League'
-- AND 
    P.LEAGUE_ID = 13;
-- AND P.LEAGUE_ID = L.LEAGUE_ID;

    

# 각 리그별 등록 선수를 조사하여 가장 많이 등록된 순서로 목록을 가져옵니다.
SELECT P.LEAGUE_ID, L.LEAGUE_NAME, COUNT(*) CNT
FROM PLAYER P, LEAGUE L
WHERE P.LEAGUE_ID = L.LEAGUE_ID
GROUP BY P.LEAGUE_ID
ORDER BY CNT DESC;

# 대한민국 국적의 선수 중 30세 이상의 선수 목록을 가져옵니다.
SELECT N.NATIONALITY_NAME, P.*
FROM NATIONALITY N, PLAYER P
WHERE N.NATIONALITY_NAME = 'Korea Republic'
AND N.NATIONALITY_ID = P.NATIONALITY_ID
AND 30 <= P.AGE
ORDER BY P.AGE DESC;



# overall 이 가장 높은 선수 10명을 검색합니다. overall 순서로 목록을 만듭니다.
SELECT T.TEAM_NAME, P.*
FROM PLAYER P, TEAM T 
WHERE P.CLUB_TEAM_ID = T.TEAM_ID
ORDER BY P.OVERALL DESC
LIMIT 10;

# 연봉(wage_eur) 이 가장 높은 선수 10명을 검색합니다. wage_eur 순서로 목을 만듭니다.
SELECT T.TEAM_NAME, P.*
FROM PLAYER P, TEAM T 
WHERE P.CLUB_TEAM_ID = T.TEAM_ID
ORDER BY P.WAGE_EUR DESC
LIMIT 10;



# Premier League에 소속된 선수 중 연봉(wage_eur) 대비 시장 가치(value_eur) 가 높은 선수 10명을 검색합니다.
SELECT L.LEAGUE_NAME, T.TEAM_NAME, P.LONG_NAME, P.VALUE_EUR / P.WAGE_EUR VALUE_RATIO, P.*
FROM PLAYER P, TEAM T, LEAGUE L
WHERE P.CLUB_TEAM_ID = T.TEAM_ID
AND P.LEAGUE_ID = L.LEAGUE_ID
AND L.LEAGUE_ID = 13
AND 23<= P.AGE
ORDER BY VALUE_RATIO DESC
LIMIT 10;



