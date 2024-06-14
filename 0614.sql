use ktrain;


select eno , ename
from emp
where eno = '1';

select ename
from emp
where ename like 'fi%';


select e.eno, e.ename, d.dname, e.salary
from emp e, dept d
where e.salary >= 40000;

select e.eno, e.ename, d.dname, e.salary
from emp e
inner join dept d on e.dno = d.dno
where d.dname = 'Marketing';

select d.dname, e.ename
from emp e
inner join dept d ON e.dno = d.dno
order by d.dname ASC;

-- 쓸모없는 쿼리 GROUP BY DNO;
SELECT DNO, COUNT(*) CNT
FROM DEPT
GROUP BY DNO;
-- 쓸모없는 쿼리 GROUP BY DNO; 
SELECT DNO, DNAME, COUNT(*) CNT
FROM DEPT;

SELECT D.DNAME, group_concat(E.ENAME) ENAME
FROM EMP E, DEPT D
WHERE E.DNO = D.DNO
GROUP BY E.DNO;

SELECT D.DNAME, SUM(E.SALARY) TOTAL
FROM EMP E, DEPT D
WHERE E.DNO = D.DNO
GROUP BY E.DNO
ORDER BY TOTAL DESC;