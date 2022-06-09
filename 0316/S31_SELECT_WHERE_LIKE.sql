--NOT LIKE
SELECT empno,
       ename,
       job,
       deptno
FROM emp
WHERE ename NOT LIKE '%AM%'
;