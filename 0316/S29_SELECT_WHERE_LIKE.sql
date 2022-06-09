--ename S로 시작하는
--SELECT empno,
--       ename,
--       job,
--       deptno
--FROM emp
--WHERE ename LIKE 'S%'
--;

--ename S를 포함하고 있는
--조회속도가 첫번째 SQL에 비해 느림
SELECT empno,
       ename,
       job,
       deptno
FROM emp
WHERE ename LIKE '%S%'
;