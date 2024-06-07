-- 1. 수도 이름과 함께 국가 이름을 검색합니다. (WHERE C.CAPITAL = CI.ID)
select c.name as country_name, ct.name
from city c, country ct;

-- 2. 세계에서 인구가 가장 많은 상위 5개 도시의 이름과 인구를 검색합니다. 결과를 인구별로 내림차순으로 정렬합니다
select name,population
from city
order by population desc
limit 5;

-- 3. 미국(United States)에 있는 모든 도시의 이름을 검색합니다.
select c2.name
from country c, city c2
where c.name = "United States"
	and c.code = c2.countrycode;
    
-- 4. 중국(China)에서 사용되는 모든 언어의 이름을 검색합니다.
select c.name, cl.language
from country c, countrylanguage cl
where name = "china"
		and c.code = cl.countrycode;

-- 5. 인구가 100만 명 이상인 유럽국가의 이름을 검색합니다.
select name, population, Continent
from country
where Continent = "europe"
		and population > 1000000
order by population desc;
-- 6. 1900년 이후 독립한 국가의 이름을 검색합니다.\
select name, IndepYear
from country
where indepyear > 1900
order by IndepYear desc;

-- 7. 영어가 공용어가 아니고 국민총생산(GNP)이 1,000보다 큰 국가의 이름을 검색합니다.
select  c.gnp, c.name, cl.IsOfficial, cl.language
from country c, countrylanguage cl
where gnp > 1000
		and c.code = cl.countrycode
        and cl.language = "english"
        and IsOfficial = "f"
order by gnp desc;
