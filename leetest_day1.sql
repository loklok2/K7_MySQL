-- # WORLD database in MySQL
use world;
-- 1. 수도와 함께 국가 이름을 검색합니다.
select name, countrycode
from city;
-- 2. 세계에서 인구가 가장 많은 상위 5개 도시의 이름과 인구를 검색합니다. 결과를 인구별로 내림차순으로 정렬합니다. desc, asc
select name, Population
from city
order by Population desc
limit 5;
-- 3. 미국(Unitedstate)에 있는 모든 도시의 이름을 검색합니다.
select countrycode, name
from city
where countrycode = 'usa';
-- 4. 중국에서 사용되는 모든 언어의 이름을 검색합니다.
-- select c.code, c.name, c.language
-- from country c, countrylanguage cl
-- where name = 'China'
-- 	and c.code = cl.countrycode;

select countrycode, language
from countrylanguage
where CountryCode = 'CHN';
-- 5. 인구가 100만 명 이상인 유럽국가의 이름을 검색합니다.
select code, name
from country
where continent = 'europe'
	and population >= 100000;

select Continent, name, Population
from country
where Continent = 'europe' and population >= 100000;
-- 6. 1900년 이후 독립한 국가의 이름을 검색합니다.
select code, name
from country
where indepyear >1900;
-- 7. 영어가 공용어가 아니고 국민총생산(GNP)이 1,000보다 큰 국가의 이름을 검색합니다. 
teltel-- select language, isofficial
-- from countrylanguage
-- where language = 'english' and isofficial = 'f'; 
-- -- where language = 'english' and isofficial <>'f'; 

select c.name, cl.language, cl.isofficial
from language cl, country c
where cl.language = 'english' and cl.isofficial = 'f'
	and cl.country = c.code
    and c.gnp >1000;
	

