SELECT * FROM fifa.player;


# 생일이 1990년 5월 생인 선수목록을 오름차순으로 출력하세요
SELECT short_name, DOB
FROM PLAYER
WHERE DOB <= "1990.05.31"
	AND DOB >= "1990.05.01"
ORDER BY DOB ASC;

SELECT RIGHT(LEFT(DOB, 7),2) MONTH, COUNT(*) CNT
FROM PLAYER
WHERE DOB <= "1990.05.31"
	AND DOB >= "1990.05.01"
GROUP BY MONTH
ORDER BY MONTH;



#1990년도 선수들의 우러별 생일을 집계해서 오름 차순으로 출력하세요 (월별)
SELECT MONTH(DOB) AS Birth_Month, COUNT(*) AS CNT
FROM PLAYER
WHERE YEAR(DOB) = 1990
GROUP BY MONTH(DOB)
ORDER BY MONTH(DOB);



