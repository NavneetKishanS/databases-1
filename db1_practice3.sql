SELECT *
FROM VDANI.EMP;

SELECT *
FROM VDANI.DEPT;

SELECT *
FROM VDANI.EMP NATURAL JOIN VDANI.DEPT;

SELECT *
FROM VDANI.EMP JOIN VDANI.DEPT
ON VDANI.EMP.DEPTNO = VDANI.DEPT.DEPTNO;

--alias letter added at the end (e,d)
SELECT *
FROM VDANI.EMP e CROSS JOIN VDANI.DEPT d
where e.DEPTNO = d.DEPTNO;

SELECT *
FROM VDANI.EMP e1 CROSS JOIN VDANI.EMP e2;

--5. List the employees whose department's location is DALLAS or CHICAGO?
SELECT *
FROM VDANI.EMP NATURAL JOIN VDANI.DEPT
WHERE LOC='DALLAS' OR LOC='CHICAGO';

--1. List the employees whose manager is KING. (without reading from monitor)
SELECT worker.ENAME
FROM VDANI.EMP worker CROSS JOIN VDANI.EMP boss
WHERE worker.mgr = boss.empno and boss.ename = 'KING';