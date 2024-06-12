-- 두개 이상의 언어를 사용하는 국가를 출력하세요
select c.name, cl.language
from country c, countrylanguage cl
where cl.IsOfficial = 't'
		and c.code = cl. CountryCode;

select countrycode, group_concat(language)
from countrylanguage
group by CountryCode;

select countrycode, count(*) cnt
from countrylanguage
group by CountryCode
order by cnt desc;

select countrycode, count(*) cnt
from countrylanguage
-- having cnt >=2
group by CountryCode
order by cnt desc;

SELECT COUNTRYCODE, COUNT(*) CNT
FROM COUNTRYLANGUAGE
-- WHERE CNT >=2
GROUP BY COUNTRYCODE
HAVING  CNT >=5
ORDER BY CNT DESC;

-- 국가별 도시들의 인구수 합계를 내림차순으로 출력하세요 
select CountryCode, sum(population) pop
from city
group by countrycode
order by pop desc;

-- 국가별 인구수 대비 도시인구의 비율을 계산하여 내림차순으로 출력하세요
select c.CountryCode, co.name, sum(c.population)/co.Population as ratio
from city c, country co
where c.CountryCode = co.Code
group by countrycode
order by ratio desc;

-- 예외가 있다는거 알아야함
select code, count(*) cnt
from country
group by code
having cnt > 1;