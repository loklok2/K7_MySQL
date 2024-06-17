use sp;

# 부품의 무게가 10pound 이상이고 부품의 도시가 파리가 아닌 부품의 도시와 색상을 찾아라
select color, city
from p
where city <> 'paris' and weight > 10;

# 모든 부품에 대하여 부품번호와 부품의 무게를 그램으로 찾아라

select pno, weight * 454 as gmwt
from p;

#공급자의 도시와 부품의 도시가같은 공급자와 부품 정보를 찾아라
select *
from s
join p on s.city = p.city;

select *
from s, p
where s.city = p.city;

#first city에 있는 공급자가 second city에 있는 부품을 공급할 때 두 도시 쌍을 찾아라
select * 
from s 
join sp join p on s.sno = sp.sno 
		and sp.pno = p.pno;

select distinct s.city as scity, p.city as pcity
from s
join sp
join p on s.sno = sp.sno
	and sp.pno = p.pno;
    
#같은 도시에 있는 공급자의 모든 공급자 번호 쌍을 찾아라
SELECT s1.*
FROM S AS S1, S AS S2
WHERE S1.CITY = S2.CITY
AND S1.SNO < S2.SNO;

select a.sno as sa, b.sno as sb   #옵티마이저 선택
from s as a, s as b
where a.city = b.city  #셀프조인 개념
	and a.sno < b.sno;

#공급자 전체 숫자를 찾아라 
select count(*) as cnt
from s;

select count(*) as n
from (
	select sno
	from sp
    group by sno) a;
    
    
#부품p2의 최대, 최소 qty를 찾아라
select max(sp.qty) as maxq, min(sp.qty) as minq
from sp
where pno = 'p2';


#공급된 부품에 대하여 부품 번호와 공급된 부품의 수량을 찾아라

select pno, sum(qty) as total
from sp
group by pno;

# 한 명 이상의 공급자에게 공급된 부품의 번호를 찾아라

select pno, count(*) cnt
from sp
group by pno
having cnt >= 1;



# 부품p2를 공급하는 공급자의 이름을 찾아라 // in으로 사용한 예제
select sname
from s 
where sno in(
		select sno
        from sp
        where pno ='p2');
        
        
        
# red부품을 적어도 한개 이상 공급하는 공급자의 이름을 찾아라
select s.sname
from p, sp, s
where color = 'red'
	and p.pno = sp.pno
    and s.sno = sp.sno
group by s.sname;


# s테이블의 최대 status 값보다 작은 status를 갖는 공급자 이름을 찾아라

select distinct sname
from s
where status < (
			select max(status)
            from s);
            

# 부품 p2를 공급하는 공급자 이름을 찾아라 
select disticnt sname
from s
where exists (select * from sp where sp.sno = s.sno and sp.pno = 'p2');



