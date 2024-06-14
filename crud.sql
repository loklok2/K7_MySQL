-- CRUD
-- CREATE
-- READ
-- UPADTE
-- DELETE 



SELECT * FROM ktrain.emp;




UPDATE `ktrain`.`emp`
SET
`salary` = SALARY + 10000
WHERE `eno` = '3';

UPDATE `ktrain`.`emp`
SET ENAME = 'SATIU'
WHERE ENO = '4';

SET SQL_SAFE_UPDATES =0;
UPDATE EMP
SET SALARY = SALARY + 10000;
SET SQL_SAFE_UPDATES =1;
-- WHERE DNO = 'D1';

INSERT INTO EMP
(ENO, ENAME, DNO, SALARY)
VALUE('8', 'LOK', 'D5', 50000);



DELETE FROM `ktrain`.`emp`
WHERE ENO = '8';
-- WHERE ENAME = ''


UPDATE EMP
SET DELETED = '1'
WHERE ENO = '8';

SELECT *
FROM EMP
WHERE DELETED = '1';



------------------------------------------ 실습 문제 ----------------------------------------------

-- 1번문제 INSERT
# 공채를 통해서 입사하는 직원을 등록하세요
INSERT INTO EMP
VALUE('6', 'LOKLOK2', 'D4', 50000);
# 2025년 조직개편을 위해 ai부서를 등록하세요
INSERT INTO DEPT
VALUE('D4', 'AI', '0');

-- 2번 문제
UPDATE `ktrain`.`emp`
SET ENAME = 'HANHANHAN'
WHERE ENO = '5';

UPDATE DEPT
SET
`BUDGET` = budget + 10000000000
WHERE `DNO` = 'D4';

-- 3번 문제
DELETE FROM EMP2312321
WHERE DNAME = 'Development'
AND SALARY > (SELECT AVG(SALARY) FROM EMP2312321 WHERE DNAME = 'Development');  -- AVG는 평균을 구하는 함수 

UPDATE EMP
SET DELETED = 1
WHERE ENO = '3';

UPDATE EMP2312321
SET DNO = 'D4'
WHERE DNO = 'D2';




