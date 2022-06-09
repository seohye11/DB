SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno = 20
AND sal > 2000
UNION
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno = 30
AND sal > 2000
;

SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE (deptno = 20 OR deptno = 30) -- = deptno IN (20,30)
AND sal > 2000