

# 직원 id 가 1 인 직원을 검색해 보세요.

SELECT NAME
FROM EMP
WHERE ID = 1;

# 직원명이 LOK 인 직원을 검색해 보세요.

SELECT E.ID, E.NAME, D.DNAME, E.SALARY
FROM EMP E, DEPT D
WHERE E.DNO = D.DNO
AND E.NAME = 'LOK';

# 급여가 $12,000이상인 직원을 검색해 보세요.

SELECT E.ID, E.NAME, D.DNO, D.DNAME, E.SALARY
FROM EMP E, DEPT D
WHERE E.DNO = D.DNO 
	AND SALARY >= 12000
ORDER BY SALARY DESC;

# Marketing 부서에 속하는 직원을 검색해 보세요.

SELECT E.ID, E.NAME, D.DNO, D.DNAME
FROM DEPT D, EMP E
WHERE DNAME = 'Marketing'
AND D.DNO = E.DNO;

# SQL Explain 을 확인해 보세요.(Ctrl + Alt + z)


# 테이블별로 필요한 index 를 생성해 보세요.


# emp_v view 를 생성해 보세요.



# 기존에 구현한 SQL 을 emp_v 를 이용하여 재구성 해보세요.



#  GROUP BY

# 부서별로 직원 목록을 부서명으로 오름차순으로 출력하세요.

SELECT D.DNAME, E.NAME
FROM EMP E, DEPT D
WHERE E.DNO = D.DNO
GROUP BY D.DNAME, E.NAME
ORDER BY D.DNAME DESC;


# 부서별로 직원 연봉 합계를 내림차순으로 출력하세요.

SELECT D.DNAME, SUM(E.SALARY) AS SALARYSUM
FROM EMP E
JOIN DEPT D ON E.DNO = D.DNO
GROUP BY D.DNAME
ORDER BY SALARYSUM DESC;


# INSERT

# 공채를 통해 입사하는 직원을 등록해 보세요.
INSERT INTO EMP(ID, NAME, DNO, SALARY)
VALUE (6, 'KKK', 2, 12000);

# 2025년 조직 개편을 위해 AI22 부서를 등록해 보세요.
INSERT INTO DEPT(DNO, DNAME, BUDGET)
VALUE (5, 'AI22', 160000);

# UPDATE

# 등록한 직원의 이름에 오류가 있습니다. 수정해 보세요.

# AI 부서의 예산이 10,000,000,000 책정됐습니다. 수정해 보세요.

# DELETE

# 개발 부서의 인원을 축소해야 합니다. 연봉이 높은 직원을 LAY OFF 하세요.

# 남아 있는 직원의 소속을 AI 부서로 변경해 주세요.