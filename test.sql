# use world;

select name, population from city where countrycode = 'kor' and population > 1000000 and population < 5000000
order by name ASC;  


select count(*) from city
where countrycode = 'kor' and population > 1000000 and population < 5000000;

select CountryCode, Population
from city
order by CountryCode asc, Population desc;


select name
from city
where countrycode in('kor', 'chn', 'jpn');

select name, population
from city
order by population ASC limit 5; 

select name
from city
where countrycode = 'kor' and 1000000 < population < 5000000;

select code
from country
where name like '%Korea%';

select b.language, b.isofficial, b.percentage
from country a, countrylanguage b
where a.name = 'South Korea' and a.code=b.countrycode;

select count(*) from city where countrycode = 'kor';











