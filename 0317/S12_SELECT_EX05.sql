--SELECT ename,
--       empno,
--       sal,
--       deptno
--FROM emp
--WHERE sal NOT BETWEEN 1000 AND 2000
--INTERSECT
--SELECT ename,
--       empno,
--       sal,
--       deptno
--FROM emp
--WHERE ename LIKE '%E%'
--AND deptno = 30
--;

SELECT ename,
       empno,
       sal,
       deptno
FROM emp
WHERE ename LIKE '%E%'
AND deptno = 30
AND sal NOT BETWEEN 1000 AND 2000
;