--1. List the employees working on department 10.

SELECT *
FROM VDANI.EMP
WHERE DEPTNO = 10;

--2. List the employees with their annual salary.

SELECT ENAME, SAL*12
FROM CDANT.EMP;

--3. List the employees and their jobs in ONE column.

SELECT ENAME || ' ' || JOB
FROM VDANI.EMP;

--4. List the employees whose salary is greater than 2000 and working on department 20.

SELECT *
FROM VDANI.EMP
WHERE SAL*12 > 2000;

--5. List the employees whose comission is greater than 600.

SELECT *
FROM VDANI.EMP
WHERE COMM>600;

--6. List the employees whose comission is NOT greater than 600.

SELECT *
FROM VDANI.EMP
WHERE NOT COMM>600;

--7. List the employees whose commission is not known (that is NULL).

SELECT *
FROM VDANI.EMP
WHERE COMM IS NULL;

--8. List the employees who doesn't have a manager.

SELECT *
FROM VDANI.EMP
WHERE MGR IS NULL;


--9. List the jobs of the employees.
SELECT DISTINCT job 
from VDANI.EMP;

SELECT DISTINCT JOB, DEPTNO
FROM VDANI.EMP;

--12. List the employees whose name contains a letter 'A'.
SELECT ename 
FROM VDANI.EMP 
WHERE ename LIKE '%A%';

--13. List the employees whose name contains two letters 'L'.
SELECT * 
FROM VDANI.EMP 
WHERE ename LIKE '%L%L%';

--14. List the name and salary of employees ordered by salary.
SELECT ENAME, SAL
FROM VDANI.EMP
ORDER BY SAL;

--15. List the name and salary of employees ordered by salary in descending order and within that order, ordered by name in ascending order.
SELECT ENAME, SAL
FROM VDANI.EMP
ORDER BY SAL DESC, ENAME ASC;

--UNIONS, INTERSECTS
SELECT DEPTNO
FROM VDANI.EMP
WHERE JOB='SALESMAN'
INTERSECT
SELECT DEPTNO
FROM VDANI.EMP
WHERE JOB='MANAGER';

SELECT ENAME,EMPNO,DEPTNO
FROM VDANI.EMP
WHERE DEPTNO=10
UNION
SELECT EMPNO,ENAME, DEPTNO
FROM VDANI.EMP
WHERE DEPTNO=20;



