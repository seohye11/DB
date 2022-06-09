--IN과 논리 부정 연산자
--SELECT empno,
--       ename,
--       deptno,
--       job
--FROM emp
--WHERE job != 'MANAGER'
--AND job != 'SALESMAN'
--AND job != 'CLERK'
--;

SELECT empno,
       ename,
       deptno,
       job
FROM emp
WHERE job NOT IN ('MANAGER','SALESMAN','CLERK')
;