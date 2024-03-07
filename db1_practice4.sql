--11. List the department names and locations where there is an employee with job ANALYST.
SELECT DNAME , LOC
FROM VDANI.EMP NATURAL JOIN VDANI.DEPT
WHERE JOB = 'ANALYST';

SELECT DNAME , LOC
FROM VDANI.EMP e cross JOIN VDANI.DEPT d
where e.deptno=d.deptno and JOB = 'ANALYST';

--sal categories

SELECT *
FROM VDANI.SAL_CAT;

select *
from vdani.emp;

--List employess who is in salary category 3
select ename
from vdani.emp e cross join vdani.sal_cat s
where e.sal >= s.lowest_sal and e.sal <= s.highest_sal
and s.category = 3;

--select the highest salary
select sal
from vdani.emp
minus
select e2.sal
from vdani.emp e1 cross join vdani.emp e2
where e2.sal < e1.sal;

select job
from vdani.emp
where deptno=20;

select job
from vdani.emp
where deptno=30;