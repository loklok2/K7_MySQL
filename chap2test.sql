use Ktrain;

-- select eno, ename, dno, salary
-- from emp 
-- where ename = 'Lopez';

-- select eno, ename, dno, salary
-- from emp 
-- where ename like 'Che%';
select dno
from dept
where dname = 'Marketing';

select e.eno, e.ename, e.dno, e.salary
from emp e
where e.dno = 'd1';

select e.eno, e.ename, d.dname, e.salary
from emp e, dept d
where e.dno = d.dno
	and d.dname = 'Marketing';

select e.eno, e.ename, d.dname, e.salary
from emp e, dept d
where e.dno = d.dno
	and e.salary >= 40000;
    
select e.eno, e.ename, d.dname, e.salary, d.budget
from emp e, dept d
where e.dno = d.dno
	and d.budget >= 10000000;